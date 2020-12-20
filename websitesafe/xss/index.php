<html>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body><center>
<div class="heading">
  <br><h2>Xss Vulnerability<br><br></h2>
</div>


<form method="get">
 <h3 style="color:orange"> Enter Query:</h3><textarea name="text" class="search-input"></textarea><br><br>
 <input type="submit" class="search-button" name="bouton" value="Enter" />
</form>

<?php
if(isset($_GET["bouton"])){
  
  $text = htmlspecialchars($_GET["text"],ENT_QUOTES,'UTF-8');
  
  echo "<p style='color:white'><strong style='color:white'>message:</strong>  ".$text."<p>";
}


 ?>
</center>
</body>
</html>