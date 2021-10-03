
<?php
session_start();

$conn=mysqli_connect('localhost:3308','root','','carrentalagency');
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
else {
}
?>