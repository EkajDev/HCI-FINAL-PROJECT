<?php
require 'config.php';

header('Content-Type: application/json');

$apiKey = '430015d32679c5f6bdfb5894f99730cd';
$query = $_GET['query'] ?? '';

if (!$query) {
    echo json_encode(['error' => 'No search query provided']);
    exit;
}

function fetchMovies($query, $apiKey) {
    $url = "https://api.themoviedb.org/3/search/movie?api_key=$apiKey&query=" . urlencode($query);
    
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);

    if (curl_errno($ch)) {
        curl_close($ch);
        return false;
    }

    curl_close($ch);
    return json_decode($response, true);
}

$data = fetchMovies($query, $apiKey);
if (!$data || !isset($data['results'])) {
    echo json_encode(['error' => 'API request failed or no results']);
    exit;
}

$results = [];

foreach ($data['results'] as $movie) {
    if (!isset($movie['id'], $movie['title'])) continue;

    $stmt = $pdo->prepare("SELECT search_count FROM movies WHERE movie_id = ?");
    $stmt->execute([$movie['id']]);
    $existing = $stmt->fetch();

    if ($existing) {
        $newCount = $existing['search_count'] + 1;
        $pdo->prepare("UPDATE movies SET search_count = ? WHERE movie_id = ?")
            ->execute([$newCount, $movie['id']]);
    } else {
        $posterUrl = $movie['poster_path'] ? "https://image.tmdb.org/t/p/w500" . $movie['poster_path'] : null;
        $pdo->prepare("INSERT INTO movies (movie_id, title, search_count, poster_url) VALUES (?, ?, 1, ?)")
            ->execute([$movie['id'], $movie['title'], $posterUrl]);
    }

    $results[] = [
        'id' => $movie['id'],
        'title' => $movie['title'],
        'release_date' => $movie['release_date'] ?? '',
        'overview' => $movie['overview'] ?? '',
        'poster_path' => $movie['poster_path'] ?? '',
        'genre_ids' => $movie['genre_ids'] ?? []
    ];
}

echo json_encode(['results' => $results]);