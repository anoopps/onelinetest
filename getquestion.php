<?php
require_once('db.php');
session_start();
$output = array();

$sql = "SELECT * FROM questions";
//$result = $connect->query($sql)?

if ($result=mysqli_query($connect,$sql))
 {
  $rowcount=mysqli_num_rows($result);
  $_SESSION['totalcount'] = $rowcount;
}

if (!isset($_SESSION['counter'])){
        $_SESSION['counter'] = 0;
    }else{
        $_SESSION['counter'] = $_SESSION['counter']+1;
}
    
    $limit = $_SESSION['counter'];
    
$sql = "SELECT id, question,answer,option1,opton2 FROM `questions` LIMIT $limit ,1";
$result = $connect->query($sql);


if ($result->num_rows > 0) {
    
    while($outputquest = $result->fetch_assoc()) {
        $output['question'] = $outputquest['question'];
        $output['questionid'] = $outputquest['id'];
        $output['option1'] = $outputquest['option1'];
        $output['opton2'] = $outputquest['opton2'];
         
    }
}else{
 $output['score'] = $_SESSION['score'];
 if( $_SESSION['counter'] == $_SESSION['totalcount'] && $_SESSION['counter'] > 9 ){
//  session_destroy();
 }

}
 
 echo json_encode($output);
 exit;
 
?>