<?php
require_once('db.php');
session_start();

$questionid = filter($_REQUEST['questionid']);
$answer = filter($_REQUEST['option']);


if($questionid && $answer){
 
   $query = "SELECT answer FROM `questions` WHERE id='".$questionid."'";
   $result = $connect->query($query);
   if( $result->fetch_object()->answer == $answer){
    answerCounter();
    } 
}

function answerCounter(){
  if( empty($_SESSION['score'] )){
     $_SESSION['score'] = 1;
   }else{
     $_SESSION['score'] = $_SESSION['score']+1; 
    } 
}

function filter($data){
    if($data){
        return strip_tags(trim($data));    
    }
}

?>