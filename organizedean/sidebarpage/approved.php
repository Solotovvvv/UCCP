<?php

include ("../include/config.php");

if(isset($_POST['id'])){

  $x = $_POST['section'];



 

  $sql1= "INSERT INTO `uccp_eval`(`name`, `gender`, `birthday`, `email`, `phone`, `course`, `year`, `section`, `schoolyear`, `sem`, `picture`, `diploma`,
    `goodmoral`, `psa`, `card`, `proof`,`erf`,`records`, `status`, `remarks`, `username`, `password`, `account_type`)  SELECT  `name`, `gender`,
     `birthday`, `email`, `phone`, `course`, `year`, `section`, `schoolyear`, `sem`, `picture`, `diploma`, `goodmoral`, `psa`, `card`, `proof`,`erf`,`records`, `status`,
     `remarks`, `username`, `password`, `account_type` FROM `uccp_masterlist` WHERE section ='$x'";
  $result= mysqli_query($conn,$sql1);

  //update uccpenrolled and uccpstudentlist status to INC  - updated last modified
    
    //  $sqlEnI =" UPDATE `uccp_enrolled` AS ue
    //     INNER JOIN `uccp_masterlist` AS um ON ue.`name` = um.`name`
    //     SET ue.`remarks` = 'Irregular'
    //     WHERE um.`remarks` = 'Irregular'";
    //     $resultEI= mysqli_query($conn,$sqlEnI);



     $sqlSTI= "UPDATE `uccp_studentinfo` AS ue
        INNER JOIN `uccp_masterlist` AS um ON ue.`name` = um.`name`
        SET ue.`remarks` = 'Irregular'
        WHERE um.`remarks` = 'Irregular'";
        $resultSt= mysqli_query($conn,$sqlSTI);

  /////////////////////////
//enrolled
$sqlD="DELETE FROM uccp_enrolled
WHERE EXISTS (
  SELECT 1
  FROM uccp_masterlist
  WHERE uccp_enrolled.name = uccp_masterlist.name AND uccp_masterlist.remarks='FAILED'
)";
  $resultD= mysqli_query($conn,$sqlD);

$sqlD1="DELETE FROM uccp_enrolled
WHERE EXISTS (
  SELECT 1
  FROM uccp_masterlist
  WHERE uccp_enrolled.name = uccp_masterlist.name AND uccp_masterlist.remarks='DROP')";
  $resultD1= mysqli_query($conn,$sqlD1);

//student info
$sqlD2="DELETE FROM uccp_studentinfo WHERE EXISTS
( SELECT 1 FROM uccp_masterlist WHERE
 uccp_studentinfo.name = uccp_masterlist.name AND uccp_masterlist.remarks='FAILED' )";
$resultD2= mysqli_query($conn,$sqlD2);

$sqlD3="DELETE FROM uccp_studentinfo WHERE EXISTS
( SELECT 1 FROM uccp_masterlist WHERE
 uccp_studentinfo.name = uccp_masterlist.name AND uccp_masterlist.remarks='DROP' )";
$resultD3= mysqli_query($conn,$sqlD3);

//login
$sqlD4="DELETE FROM uccp_login WHERE EXISTS
( SELECT 1 FROM uccp_masterlist WHERE
uccp_login.username = uccp_masterlist.email AND uccp_masterlist.remarks='FAILED' )";
$resultD4= mysqli_query($conn,$sqlD4);


$sqlD4="DELETE FROM uccp_login WHERE EXISTS
( SELECT 1 FROM uccp_masterlist WHERE
uccp_login.username = uccp_masterlist.email AND uccp_masterlist.remarks='DROP' )";
$resultD4= mysqli_query($conn,$sqlD4);



        
$querys = "UPDATE `uccp_enrolled` SET status = ''  WHERE section = '$x';";
mysqli_query($conn,$querys);

$querysz = "UPDATE `uccp_studentinfo` SET status = ''  WHERE section = '$x';";
mysqli_query($conn,$querysz);


  $sql2 = "DELETE FROM `uccp_masterlist` WHERE section= '$x'";
  $result= mysqli_query($conn,$sql2);


}
 ?>
