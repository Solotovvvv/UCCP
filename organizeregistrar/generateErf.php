<?php
include 'include/config.php';

$x = $_POST['i'];

$output = '';

$sql1 = "SELECT * FROM `uccp_studentinfo` WHERE id=$x";
$results = mysqli_query($conn, $sql1);

while ($r1 = mysqli_fetch_assoc($results)) {
  $student_name = $r1['name'];
  $course = $r1['course'];
  $year = $r1['year'];
  $sem = $r1['sem'];
  $schoolyear = $r1['schoolyear'];
  $section = $r1['section'];
  $remarks = $r1['remarks'];

  $output .= '<div class="row mb-3 border-bottom pb-3">
    <div class="col">
      <img src="../UCCLOGO.png" alt="University of Caloocan City Logo" class="img-fluid mx-5" width="100" height="100">
    </div>
    <div class="col-6">
      <h1 class="mb-0 text-center">University of Caloocan City</h1>
      <h2 class="text-center">Registration Form</h2>
    </div>
    <div class="col">
  </div>
  </div>
  
  <div class="row mb-3 justify-content-center border-bottom pb-3">
    <div class="col-3">
      <label for="name"><b>Name:</b></label>
      <span id="name" class="form-control-plaintext" style="font-size: 20px;"><em>' . $student_name . '</em></span>
      <label for="course"><b>Course:</b></label>
      <span id="course" class="form-control-plaintext" style="font-size: 20px;"><em>' . $section . '</em></span>
    </div>
    <div class="col-3">
      <label for="semester"><b>Semester:</b></label>
      <span id="semester" class="form-control-plaintext" style="font-size: 20px;"><em>' . $sem . '</em></span>
      <label for="school-year"><b>School Year:</b></label>
      <span id="school-year" class="form-control-plaintext" style="font-size: 20px;"><em>' . $schoolyear . '</em></span>
    </div>
    <div class="col-3">
      <label for="school-year"><b>Date:</b></label>
      <span id="date" class="form-control-plaintext" style="font-size: 20px;"></span>
    </div>
  </div>';
}

if ($remarks == "Irregular") {
  $sql = "SELECT `Subcode`, `Description`, `Sem`, `Units`, `StartTime`, `EndTime`, `Professor`, `Day`, `Room` FROM `uccp_irregular` WHERE name = '$student_name'";
  $result = mysqli_query($conn, $sql);

  if ($result) {
    $unitss = 0;
    $output .= '<div class="d-flex justify-content-center">
                  <div class="table">
                    <table class="table mx-auto">
                      <thead>
                        <tr>
                          <th class="text-center" style="width: 10%">Subcode</th>
                          <th class="text-center" style="width: 40%">Description</th>
                          <th class="text-center" style="width: 10%">Units</th>
                        </tr>
                      </thead>
                      <tbody>';

    while ($r = mysqli_fetch_assoc($result)) {
      $description = $r['Description'];
      $subcode = $r['Subcode'];
      $units = $r['Units'];
      $unitss += $units;
      $start_time = $r['StartTime'];
      $end_time = $r['EndTime'];
      $professor = $r['Professor'];
      $day = $r['Day'];
      $room = $r['Room'];

      $output .= '<tr>
                    <td class="text-center" style="width: 10%">' . $subcode . '</td>
                    <td class="text-center" style="width: 40%">' . $description . '</td>
                    <td class="text-center" style="width: 10%">' . $units . '</td>
                  </tr>';
    }

    $output .= '<tr>
                  <td class="text-center" style="width: 10%"></td>
                  <td class="text-end pe-5" style="width: 40%"><b>TOTAL UNITS:</b></td>
                  <td class="text-center" style="width: 10%"><b>' . $unitss . '</b></td>
                </tr>
              </tbody>
            </table>
            <br>
            <div style="text-align: center;">
              <p><u style="margin: 0 auto;">_____________________________________</u></p>
              <p style="margin: 0;">PROGRAM HEAD/CHAIR/COOR.</p>
            </div>
          </div>
        </div>';
  }
} else {
  $sql = "SELECT a.`Subcode`, a.`Description`, a.`Sem`, a.`Units`, a.`availability`
          FROM `uccp_approvedcurriculum` a
          INNER JOIN `uccp_studentinfo` b
          ON a.`Course` = b.`course` AND a.`Year` = b.`year` AND a.`Sem` = b.`sem`
          WHERE a.availability ='Accredit' AND b.`id` = $x";

  $result = mysqli_query($conn, $sql);

  if ($result) {
    $unitss = 0;
    $output .= '<div class="d-flex justify-content-center">
                  <div class="table">
                    <table class="table mx-auto">
                      <thead>
                        <tr>
                          <th class="text-center" style="width: 10%">Subcode</th>
                          <th class="text-center" style="width: 40%">Description</th>
                          <th class="text-center" style="width: 10%">Units</th>
                        </tr>
                      </thead>
                      <tbody>';

    while ($r = mysqli_fetch_assoc($result)) {
      $description = $r['Description'];
      $subcode = $r['Subcode'];
      $units = $r['Units'];
      $unitss += $units;

      $output .= '<tr>
                    <td class="text-center" style="width: 10%">' . $subcode . '</td>
                    <td class="text-center" style="width: 40%">' . $description . '</td>
                    <td class="text-center" style="width: 10%">' . $units . '</td>
                  </tr>';
    }

    $output .= '<tr>
                  <td class="text-center" style="width: 10%"></td>
                  <td class="text-end pe-5" style="width: 40%"><b>TOTAL UNITS:</b></td>
                  <td class="text-center" style="width: 10%"><b>' . $unitss . '</b></td>
                </tr>
              </tbody>
            </table>
            <br>
            <div style="text-align: center;">
              <p><u style="margin: 0 auto;">_____________________________________</u></p>
              <p style="margin: 0;">PROGRAM HEAD/CHAIR/COOR.</p>
            </div>
          </div>
        </div>';
  }
}

echo $output;
?>
