<?php
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$email=$_POST['email'];
$password=$_POST['password'];
$confirmpassword=$_POST['confirmpassword'];

$conn=new mysqli('localhost','root','root','registration');
if($conn->connect_error){
    die('Connection Failed : '.$conn->connect_error);
}else{
    $stmt=$conn->prepare("insert into user(firstname,lastname,email,password,confirmpassword)values(?,?,?,?,?)");
    $stmt->bind_param("sssss",$firstname,$lastname,$email,$password,$confirmpassword);
    $stmt->execute();
    echo "You have successfully registered!";
    $conn->close();
}
?>
