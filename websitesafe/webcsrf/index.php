<html>
<head>
<?php
    session_start();
    $user = $_SESSION['username'];
    $con=Mysqli_connect('127.0.0.1',"root","","loginsystems");
    $result=mysqli_query($con,"SELECT user_id FROM users where user_uid='$user'");
    $row=mysqli_fetch_array($result);
    $useruid=$row['user_id'];
    
    $result=mysqli_query($con,"SELECT balance FROM money where user_id='$useruid'");
    $row=mysqli_fetch_array($result);
    require 'token.php';
    if(isset($_GET['accno']) && isset($_GET['amt'],$_GET['token'])){
        if(Token::check($_GET['token'])){
        $accuser=$_GET['accno'];
        
        
        $result1=mysqli_query($con,"SELECT balance FROM money where user_id='$accuser'");
        
        $row1=mysqli_fetch_array($result1);
        $bal1=$row['balance']-$_GET['amt'];
        if($bal1<0){
            echo "Not enough balance";
            
        }
        else{
        $bal2=$row1['balance']+$_GET['amt'];
        if($useruid!=$accuser){
            mysqli_query($con,"Update money set balance = $bal1 where user_id = $useruid"); 
            mysqli_query($con,"Update money set balance = $bal2 where user_id = $accuser");
            header("Location:index.php?username=$user");
        }
        
        }
       
        }

    }

?>
</head>
<body>
<br>
<center><h3>Transfer money</h3><br><hr>
<h4> Your balance:
<?php

    echo $row['balance'];
?></h4>
<form action="#" method="GET">
    <h2>Enter receivers account number:</h2> <input type="number" class="search-input" name="accno" placeholder="Account Number"><br>
    <h2> Enter the amount to be transferred:</h2><input type="number" class="search-input" name="amt" placeholder="Amount"><br><br>
    <input type="hidden" name="token" value="<?php echo Token::generate(); ?>"><br>
    <button type="submit" name="submit" class="search-button" >Transfer</button>
</form>
</center>
</body>
<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
</html>