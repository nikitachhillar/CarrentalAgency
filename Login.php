<?php
session_start();

$conn=mysqli_connect('localhost:3308','root','','carrentalagency');
$user=$_POST["username"];
$pass=$_POST["pwd"];
$t=$_POST["type"];
        
$sql="select * from users where Username='".$user."' and Password='".$pass."' limit 1 "; 
$result = mysqli_query($conn,$sql);
    //$row = mysqli_fetch_array($result);
 
if (mysqli_num_rows($result) === 1) 
{
        	  $row = mysqli_fetch_assoc($result);

                 if($row['Type'] == "Agent"){ //Check the role here
                     $_SESSION['Username'] = $row['Username'];
        		     $_SESSION['Password'] = $row['Password'];
                     header('Location: Agent.html');
                 }else if($row['Type']=="Customer"){ // If you want to be more specific you can write a else-if here too.
                     $_SESSION['Username'] = $row['Username'];
        		     $_SESSION['Password'] = $row['Password'];
                     header('Location: Customer.html');
                 }
 }
else 
{
                 $error = "Your Login Name or Password is invalid";
}
   

?>