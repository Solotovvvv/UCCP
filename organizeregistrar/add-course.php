<?php
include('include/config.php');

  
  extract ($_POST);

  if(isset($_POST['course'])){
    

    $sql = "INSERT INTO `uccp_add_courses` (`courses`, `Abbreviation`) VALUES ('$course', '$abbreviation')";

    $result= mysqli_query($conn,$sql);

    if($sql == true){

      $data = array(
        'status'=>'success',
      );
      echo json_encode($data);
    }else {

      $data = array(
        'status'=>'failed',
      );
      echo json_encode($data);
    }

  }


 ?>



