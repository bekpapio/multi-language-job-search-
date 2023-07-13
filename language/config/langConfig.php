<?php
//  session_start();
if(!isset($_SESSION['lang']) || !isset($_GET['lang'])){
    $_SESSION['lang']="en";
}else if (isset($_GET['lang'])){
    $language=$_GET['lang'];
    $_SESSION['lang']=$language;
}
?>