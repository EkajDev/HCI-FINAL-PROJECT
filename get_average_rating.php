<?php
require 'config.php';

$movie_id = $_GET['movie_id'] ?? null;

if (!$movie_id) {
    echo json_encode(['avg_rating' => 0]);
    exit;
}

$stmt = $pdo->prepare("SELECT AVG(rating_value) as avg_rating FROM ratings WHERE movie_id = ?");
$stmt->execute([$movie_id]);
$result = $stmt->fetch();

echo json_encode(['avg_rating' => round($result['avg_rating'] ?? 0, 1)]);