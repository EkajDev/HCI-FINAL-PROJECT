<?php

header('Content-Type: application/json');

$data = json_decode(file_get_contents("php://input"), true);

if (!isset($data['movie_id']) || !isset($data['rating'])) {
    echo json_encode(['success' => false, 'message' => 'Missing data']);
    exit;
}

require 'config.php';

$movieId = (int) $data['movie_id'];
$rating = (int) $data['rating'];

if ($rating < 1 || $rating > 5) {
    echo json_encode(['success' => false, 'message' => 'Invalid rating']);
    exit;
}

try {
    $stmt = $pdo->prepare("INSERT INTO ratings (movie_id, rating_value) VALUES (?, ?)");
    $stmt->execute([$movieId, $rating]);

    echo json_encode(['success' => true]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}