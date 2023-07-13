<?php
if($_SESSION["lang"]=='om'){
    include_once('language/oro.php');
}else if($_SESSION["lang"]=='am'){
    include_once('language/amh.php');
}else if ($_SESSION["lang"]=='en'){
    include_once('language/eng.php');
}
?>