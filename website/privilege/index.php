<html>
    <head>
    <link rel="stylesheet" href="style.css">
</head>
<?php
    session_start();
    $user=$_SESSION['username'];
?>
<body>
<?php 

$con=Mysqli_connect('127.0.0.1',"root","","loginsystems");
$result=mysqli_query($con,"SELECT premium FROM users where user_uid='$user'");
if($result){
    
    $r=mysqli_fetch_array($result);
    if($r['premium']=="no"){
        echo "<div class='heading'><br><center><h3>Best Selling Books<br></h3></div><div class='bod'>";
        echo "<br><br>";
        $result1=mysqli_query($con,"SELECT * FROM books where premium='no'");
        if($result1){
            while($row1=mysqli_fetch_array($result1)){
                $ref=$row1['id'];
                
                echo "<h4><a style='color:white;text-decoration:none;' href='book.php?id=$ref'>".$row1['Name']."</a></h4>";
            }
            echo "<br>";
        }  
    }
        
    else{
        echo "<div class='heading'><br><center><h3>Best Selling Books<br></h3></div><div class='bod'>";
        echo "<br><br>";
        $result1=mysqli_query($con,"SELECT * FROM books");
        if($result1){
            while($row1=mysqli_fetch_array($result1)){
                $ref=$row1['id'];
                echo "<h4><a style='color:white;text-decoration:none;' href='book.php?id=$ref'>".$row1['Name']."</a></h4>";
            }
            echo "<br>";
        }  
    }

}

?>
</body>
</html>
