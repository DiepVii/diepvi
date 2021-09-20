
<?php
// Create connection
$conn = mysqli_connect('localhost', 'root', '', 'vidu');
mysqli_set_charset($conn, 'UTF8');

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>