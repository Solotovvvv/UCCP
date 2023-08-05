<?php
  include ("../include/config.php");



  $sql= "SELECT * FROM `uccp_irregular`";
  $result = mysqli_query($conn,$sql);



  $rows = array();
  $data = array();
  while ($row = mysqli_fetch_array($result)) {


  $name=  $row['name'];
  $subcode=  $row['Subcode'];
  $subname=  $row['Description'];
  $units=  $row['Units'];
  $sem=  $row['Sem'];
  $day=  $row['Day'];
  $start=  $row['StartTime'];
  $end=  $row['EndTime'];
  $prof=  $row['Professor'];
  $room=  $row['Room'];



  $subarray= array();

    $subarray[]=  ' <td >'.$name.'</td>';
    $subarray[]=  ' <td >'.$subcode.'<br> '.$subname.'</td>';
    $subarray[]=  ' <td >'.$units.'</td>';
    $subarray[]=  ' <td >'.$day.'</td>';
    $subarray[]=  ' <td >'.$sem.'</td>';
    $subarray[]=  ' <td >'.$start.'</td>';
    $subarray[]=  ' <td >'.$end.'</td>';
    $subarray[]=  ' <td >'.$prof.'</td>';
    $subarray[]=  ' <td >'.$room.'</td>';



  $subarray[]=   '  <td >
        <button class="btn btn-success" onclick="updateirreg('.$row['id'].')"><i class="fa-sharp fa-solid fa-pen"></i></button>
        <button class="btn btn-danger" onclick="deleteirreg('.$row['id'].')"><i class="fa-sharp fa-solid fa-trash"></i></button>

      </td>';



  $data[]=$subarray;
  }


  $output = array(
    'data'=>$data,


  );

  echo json_encode($output);










 ?>
