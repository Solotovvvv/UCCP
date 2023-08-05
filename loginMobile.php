<?php

error_reporting(0);

include('config.php');

$response = array();

if(isset($_POST['login'])){
    $user = $_POST['user'];
    $pass = $_POST['pass'];

    $sql = mysqli_query($conn, "SELECT * FROM uccp_login WHERE username = '$user' AND password = '$pass'");
    $rows = mysqli_fetch_assoc($sql);
    $u = $rows['Usertype'];

    if($u == '1'){
        $sql1 = "SELECT * FROM uccp_studentinfo WHERE username = '$user' AND password = '$pass'";
        $result1 = mysqli_query($conn, $sql1);

        if(mysqli_num_rows($result1) > 0){
            $response['status'] = 1; // User type is 1
            $response['user'] = $user; // Store the username

            // Fetch all columns from the studentinfo table
            $studentData = mysqli_fetch_assoc($result1);
            $response['studentData'] = $studentData;
        }
        else{
            $response['status'] = 0; // Invalid credentials
        }
    }
    elseif($u == '2'){
        $sql1 = "SELECT `id`, `fullname`, `address`, `email`, `gender`, `contact`, `faculty`, `account_type`, `username`, `password` FROM uccp_professor WHERE username = '$user' AND password = '$pass'";
        $result1 = mysqli_query($conn, $sql1);

        if(mysqli_num_rows($result1) > 0){
            $response['status'] = 2; // User type is 2
            $response['user'] = $user; // Store the username

            // Fetch all columns from the professor table
            $professorData = mysqli_fetch_assoc($result1);
            $response['professorData'] = $professorData;
        }
        else{
            $response['status'] = 0; // Invalid credentials
        }
    }
    else {
        $response['status'] = 0; // Invalid credentials
    }
}

echo json_encode($response);
?>
