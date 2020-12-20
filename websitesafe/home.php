
<html>
<head>
    <link rel="stylesheet" href="headstyle.css">
</head>
<body>
<div class="heading">

    <center><h3>Security Assessment using Automated Tools</h3></center>
</div>
<h4 align="right" style="font-size:20px;padding-right:40px">Welcome &nbsp;
<?php 
   
    session_start();
    if(!isset($_SESSION['username'])){
        header('Location:login.php');
    }
    $username=$_SESSION['username'];
    session_regenerate_id(true);
    $user=$_SESSION['username'];
    if(is_null($_SESSION['username'])){
        header('Location:login.php');
    }
    
    
    echo $user;
    
   

?>
<form action="#" method="POST"><button type='submit' value ='Log out' name="logout">Log Out</button></form>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>

<hr>
<h3>Other vulnerabilities:</h3>
<ul>
<li><a style="text-decoration:none;font-size:20px;" href="xss/index.php">XSS vulnerability</a></li> <br>
<li><a style="text-decoration:none;font-size:20px;" href="privilege/index.php">Privilege escalation</a></li> <br>
<li><a style="text-decoration:none;font-size:20px" href="webcsrf/index.php">CSRF</a></li><br>
</ul>
</body>
<?php

if(isset($_POST['logout'])){
   
   header('Location:login.php');


  }
?>
</html>