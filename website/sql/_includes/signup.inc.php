<?php
    $first=$_POST['first'];
    $last=$_POST['last'];
    $email=$_POST['email'];
    $uid=$_POST['uid'];
    $password=$_POST['pwd'];
    $con=Mysqli_connect("localhost","root","","loginsystem");
    mysqli_query($con,"INSERT INTO users(user_first, user_last, user_email, user_uid,user_pwd,premium) VALUES ('$first','$last','$email','$uid','$password','no')") or die("Could not read table");
    header("Location: ../index.php?signup=success");
?>