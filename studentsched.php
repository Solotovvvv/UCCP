<?php

include 'config.php';



$query = "SELECT * FROM `uccp_sched` WHERE 1";
$query_run = mysqli_query($conn, $query);

$response = array();

if (mysqli_num_rows($query_run) > 0) {
    while ($row = mysqli_fetch_assoc($query_run)) {
        $schedule = array(
            'subjectcode' => $row['subjectcode'],
            'subjectname' => $row['subjectname'],
            'units' => $row['units'],
            'day' => $row['day'],
            'starttime' => $row['starttime'],
            'endtime' => $row['endtime'],
            'room' => $row['room'],
            'courseyearsection' => $row['courseyearsection'],
            'professor' => $row['professor']

        );

        $response[] = $schedule;
    }
}


echo json_encode($response);
?>







