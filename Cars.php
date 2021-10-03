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
   
 $num=$_POST["numb"];
 $mod=$_POST["model"];
 $cap=$_POST["capacity"];
 $ren=$_POST["rent"];
 //$img=$_POST["image"];   
 //create a connection
   
$sql="insert into vehicle (Number,Model,Capacity,Rent) values ('$num','$mod','$cap','$ren')";

if ($conn->query($sql)==TRUE) {
  echo "New record  created";
}

    else{
        echo "Error:".$sql."<br>".$conn->error;
    }
     header('Location:Agent.html');

$conn->close();
    
?>

 </body>  
 </html> 