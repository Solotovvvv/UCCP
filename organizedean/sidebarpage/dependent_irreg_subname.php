<?php
include("../include/config.php");

if (isset($_POST['subcode'])) {
  $subcode = $_POST['subcode'];

  $query = "SELECT `Description`, `Units` FROM `uccp_approvedcurriculum` WHERE `Subcode` = '$subcode' LIMIT 1";
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
