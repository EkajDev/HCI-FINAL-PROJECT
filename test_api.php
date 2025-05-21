<?php
$apiKey = "430015d32679c5f6bdfb5894f99730cd"; // Replace with your actual key
$query = "Inception"; // test query
$url = "https://api.themoviedb.org/3/search/movie?api_key=$apiKey&query=" . urlencode($query);

// cURL Setup
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);
curl_close($ch);

// Decode response
$data = json_decode($response, true);

// Show output
echo "<pre>";
print_r($data);
echo "</pre>";
?>
