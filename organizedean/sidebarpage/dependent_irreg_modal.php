<?php
include("../include/config.php");

if (isset($_POST['cys']) && isset($_POST['sem'])) {
  $cys = $_POST['cys'];
  $sem = $_POST['sem'];

  $query = "SELECT `course`, `year` FROM `uccp_section` WHERE `courseyearsection` = '$cys'";
  $result = mysqli_query($conn, $query);

  if ($result && mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $course = $row['course'];
    $year = $row['year'] . ' Year';

    $data = array();

    $query = "SELECT DISTINCT `Subcode` FROM `uccp_approvedcurriculum` WHERE `course` = '$course' AND `year` = '$year' AND `availability` = 'Accredit' AND `Sem`= '$sem' ";
    $result = mysqli_query($conn, $query);

    if ($result) {
      $subcode = '<option value="" selected disabled class="chosen">Select</option>';

      while ($row = mysqli_fetch_assoc($result)) {
        $subcode .= '<option value="' . $row['Subcode'] . '">' . $row['Subcode'] . '</option>';
      }

      $data['course'] = $course;
      $data['year'] = $year;
      $data['subcode'] = $subcode;

      echo json_encode($data);
    } else {
      echo "Error: " . mysqli_error($conn);
    }
  } else {
    $data = array('error' => 'Invalid courseyearsection');
    echo json_encode($data);

  }
} 
elseif (isset($_POST['subcode'])) {
  $subcode = $_POST['subcode'];

  $query = "SELECT `Description`, `Units` FROM `uccp_approvedcurriculum` WHERE `Subcode` = '$subcode'";
  $result = mysqli_query($conn, $query);

  if ($result && mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $description = $row['Description'];
    $units = $row['Units'];

    $data = array(
      'description' => $description,
      'units' => $units
    );

    echo json_encode($data);
  } else {
    echo "Invalid subcode";
  }
} else {
  echo "Invalid request";
}

mysqli_close($conn);
?>
