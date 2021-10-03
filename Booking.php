<?php
include 'config.php'
?>
<!DOCTYPE html>
 <html>
 <head><title>Storing in database</title>
 </head>
 <body>
 <?php
   
 $nam=$_POST["name"];
 $mob=$_POST["mobile"];
 $day=$_POST["days"];
 $num=$_POST["vnum"];
 $ren=$_POST["rent"]; 
 //$date=$_POST["date"];
 $new_date=$_POST["d"];
 $total=$day*$ren;
 //create a connection
   
$sql="insert into booking (Name,Mob_Num,Veh_num,Days,Rent,Total_Rent,Date) values ('$nam','$mob','$num','$day','$ren','$total','$new_date')";

if ($conn->query($sql)==TRUE) {
  echo "New record  created";
}

    else{
        echo "Error:".$sql."<br>".$conn->error;
    }
     header('Location:Customer.html');

$conn->close();
    
?>

 </body>  
 </html> 