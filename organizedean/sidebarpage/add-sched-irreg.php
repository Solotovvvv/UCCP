<?php
  include ("../include/config.php");

  extract ($_POST);
  if(isset($_POST['name'])){





    $sql = "INSERT INTO `uccp_irregular`( `name`, `Subcode`, `Description`, `Sem`, `Units`, `StartTime`, `EndTime`, `Professor`, `Day`, `Room`) 
    VALUES ('$name','$subcode','$subname','$sem','$units','$starttime','$endtime','$professor','$day','$room')";
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
