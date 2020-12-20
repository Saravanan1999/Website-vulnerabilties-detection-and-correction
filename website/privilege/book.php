<?php
    $id=$_GET['id'];
    $con=Mysqli_connect('127.0.0.1',"root","","loginsystems");
    $result=mysqli_query($con,"SELECT * FROM books where id='$id'");
    if($result){
        $r=mysqli_fetch_array($result);
        echo "<br><br><center><h1>";
        echo $r['Name'];
        echo "</h1><br><hr><p style='padding:20 150 50 150'>";
        echo $r['Description'];
        echo "</p></center>";
        
    }
?>