<?php
session_start();
include 'config.php'
?>
<!DOCTYPE html>
 <html>
 <head><title>Storing in database</title>
 </head>
 <body>
 <?php
   
 $user=$_POST["username"];
 $pass=$_POST["pwd"];
 $t=$_POST["type"];
     
 //create a connection
    
   
$sql="insert into users(Username,Password,Type) VALUES ('$user','$pass','$t')";

if ($conn->query($sql)==TRUE) {
  echo "New record  created";
}

    else{
        echo "Error:".$sql."<br>".$conn->error;
    }
     header('Location:Home.html');

$conn->close();
    
?>

 </body>  
 </html> 