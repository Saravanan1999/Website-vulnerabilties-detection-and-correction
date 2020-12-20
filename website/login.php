<html>

<link href=style.css rel="stylesheet" type="text/css"/>
<br><br><br><br><br><br>
<body >


  <form action="login.php" method="Post" class="search-form">

    <h2>Username:</h2><input class="search-input" type="text" name="user" ><br>
    <h2>Password:</h2><input class="search-input" type="password" id="pass" name="pass" ><br>
  <br>  <input class="search-button" type="submit" name="submit" value="Log In"><br></center>
    <br>
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forgot password?<a href="csrf/index.php" style="text-decoration:none;color:black">&nbsp;<b><u>Reset password</u></b></a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  Don't have account?<a href="sql/index.php" style="text-decoration:none;color:black">&nbsp;<b><u>Sign Up</u></b></a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  



<?php
if(isset($_POST['submit'])){
   error_reporting(0);
   session_start();
   $user=$_POST["user"];
   $pass=$_POST["pass"];
   $con=Mysqli_connect('127.0.0.1',"root","","loginsystems");
   $result=mysqli_query($con,"SELECT * FROM users where user_uid='$user'")
   or die("Failed to query database".mysqli_error($con));
   $row=mysqli_fetch_array($result);
   
   if($row['user_pwd']==$pass){
    $_SESSION['user_uid']=$row['user_id'];
    $_SESSION['username']=$row['user_uid'];
    header('Location: home.php');
   }
   else{
     echo "Wrong username or password";
   }
  }

?>
</body>
</html>