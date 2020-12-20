

<html>
<head>
<link rel="stylesheet" href="style.css">
<title></title>
</head>
<body>
<form action="#" method="GET" class="search-form">
    <h2>Username:</h2> <input type="text" class="search-input" name="user" placeholder="Username">
    <br>
    <h2>Current Password:</h2><input type="password"class="search-input"  name="currpwd" placeholder="Current Password">
    <br>
    <h2>New Password:</h2><input type="password"class="search-input"  name="newpwd" placeholder="New Password">
    <br><br>
    <button type="submit" name="submit" class="search-button" >Reset</button>

</form>
<?php
if(isset($_GET['submit'])){
   error_reporting(0);
   $user=$_GET["user"];
   session_start();
   $_SESSION['user']=$user;
   $currpass=$_GET["currpwd"];
   $newpass=$_GET["newpwd"];
   $con=Mysqli_connect('127.0.0.1',"root","","loginsystems");
   $result=mysqli_query($con,"SELECT * FROM users where user_uid='$user'")or die("The entered username does not exist");
   $row=mysqli_fetch_array($result);
   if($row['user_pwd']==$currpass){
        mysqli_query($con,"UPDATE users SET user_pwd='$newpass' where user_uid='$user'") or die("The entered username does not exist");;
        echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspThe password has been changed successfully";
   }
   else{
     echo "<p style='color:white'>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspThe username or current password  is incorrect</p>";
   }
  }

?>
</body>
</html>