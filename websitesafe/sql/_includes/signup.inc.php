<?php
    $con=Mysqli_connect("localhost","root","","loginsystem");
    $first=mysqli_real_escape_string($con,$_POST['first']);
    $last=mysqli_real_escape_string($con,$_POST['last']);
    $email=mysqli_real_escape_string($con,$_POST['email']);
    $uid=mysqli_real_escape_string($con,$_POST['uid']);
    $password=mysqli_real_escape_string($con,$_POST['pwd']);
    
    mysqli_query($con,"INSERT INTO users(user_first, user_last, user_email, user_uid,user_pwd,premium) VALUES ('$first','$last','$email','$uid','$password','no')") or die("Could not read table");
    header("Location: ../index.php?signup=success");
?>