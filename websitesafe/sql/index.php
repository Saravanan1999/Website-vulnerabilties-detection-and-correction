<?php
    $con=Mysqli_connect("localhost","root","","loginsystems");
?>
<html>
<head>
<link rel="stylesheet" href="style.css">
<title></title>
</head>
<body>
<form action="_includes/signup.inc.php" method="POST" class="search-form">
    <h2>First Name:</h2><input type="text" class="search-input" name="first" placeholder="Firstname">
    <br>
    <h2>Last Name:</h2><input type="text" class="search-input" name="last" placeholder="Lastname">
    <br>
    <h2>Email ID:</h2><input type="text" class="search-input" name="email" placeholder="E-mail">
    <br>
    <h2>Username:</h2> <input type="text" class="search-input" name="uid" placeholder="Username">
    <br>
    <h2>Password:</h2><input type="password"class="search-input"  name="pwd" placeholder="Password">
    <br><br>
    <button class="search-button" type="submit" name="submit">Sign Up</button>

</form>

</body>
</html>