<?php

include('config.php');

if (isset($_POST['user_id']) && isset($_POST['CurrentP']) && isset($_POST['NewP']) && isset($_POST['ConfirmP'])) {
    $user_id = $_POST['user_id'];
    $current = $_POST['CurrentP'];
    $new = $_POST['NewP'];
    $confirm = $_POST['ConfirmP'];

    // Retrieve the current password from the database for the user
    $query = "SELECT Password FROM uccp_login WHERE id = '$user_id'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    $storedPassword = $row['Password'];

    if ($current == $storedPassword) {
        if ($new == $confirm) {
            // Update the password in the uccp_login and uccp_professor tables
            $update = "UPDATE uccp_login SET Password = '$new' WHERE id = '$user_id'";
            $query_run = mysqli_query($conn, $update);

            $updates = "UPDATE uccp_studentinfo SET Password = '$new' WHERE id = '$user_id'";
            $query_run = mysqli_query($conn, $updates);

            $updatess = "UPDATE uccp_enrolled SET Password = '$new' WHERE id = '$user_id'";
            $query_run = mysqli_query($conn, $updatess);

            $updatesss = "UPDATE uccp_masterlist SET Password = '$new' WHERE id = '$user_id'";
            $query_run = mysqli_query($conn, $updatesss);

            // Return a success response in JSON format
            $response = [
                'status' => 'success',
                'message' => 'Password updated successfully'
            ];
            http_response_code(200);
            echo json_encode($response);
        } else {
            // Return an error response in JSON format
            $response = [
                'status' => 'error',
                'message' => 'New password and confirm password do not match'
            ];
            http_response_code(400);
            echo json_encode($response);
        }
    } else {
        // Return an error response in JSON format
        $response = [
            'status' => 'error',
            'message' => 'Current password is not valid'
        ];
        http_response_code(400);
        echo json_encode($response);
    }
} else {
    // Return an error response in JSON format
    $response = [
        'status' => 'error',
        'message' => 'Invalid request parameters'
    ];
    http_response_code(400);
    echo json_encode($response);
}
?>
