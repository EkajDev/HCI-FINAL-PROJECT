<?php
    require 'config.php';

    $stmt = $pdo->query("SELECT title, poster_url, search_count FROM movies ORDER BY search_count DESC LIMIT 5");
    $topMovies = $stmt->fetchAll();

    echo json_encode($topMovies);
?>