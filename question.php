<?php
require_once('db.php');

$question = filter($_REQUEST['question']);
$option1 = filter($_REQUEST['option1']);
$option2 = filter($_REQUEST['option2']);
$answer = filter($_REQUEST['answer']);
$output = array();

if($question && $answer && $option1 && $option2){
    $query ="INSERT INTO `questions` (`question`, `answer`, `option1`, `opton2`)
                VALUES ('".$question."', '".$answer."', '".$option1."', '".$option2."');";
    
    if($connect->query($query)==TRUE){
        $output['status'] = 1;
        $output['message'] = "Question succesfully entered"; 
    }else{
        $output['status'] = 0;
        $output['message'] = "Error!";         
    }
    echo json_encode($output);
    exit;

}
    

function filter($data){
    if($data){
        return strip_tags(trim($data));    
    }
}
?>