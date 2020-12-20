<?php
    $id=$_GET['id'];
    session_start();
    $user=$_SESSION['username'];

    $con=Mysqli_connect('127.0.0.1',"root","","loginsystems");
    $result=mysqli_query($con,"SELECT * FROM books where id='$id'");
    $result1=mysqli_query($con,"SELECT * FROM users where user_uid='$user'");
    $row1=mysqli_fetch_array($result1);
    $pre=$row1['premium'];
    if($result){
        $r=mysqli_fetch_array($result);
        if($r['premium']=="yes" && $pre=="no"){
            header( "HTTP/1.0 404 Not Found" );
        }
        else{
            echo "<br><br><center><h1>";
            echo $r['Name'];
            echo "</h1><br><hr><p style='padding:20 150 50 150'>";
            echo $r['Description'];
            echo "</p></center>";
        }
        
    }
?>