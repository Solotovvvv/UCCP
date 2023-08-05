<?php
include 'include/header.php';
include 'include/config.php';
?>

<!-- <div class="d-flex" id="wrapper"> -->
  <?php include 'include/sidebar.php'; ?>
  <div id="page-content-wrapper">
    <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
      <div class="d-flex align-items-center">
        <i class="fas fa-bars primary-text fs-4 me-3" id="menu-toggle"></i>
        <h2 class="fs-2 m-0">Registrar Dashboard</h2>
      </div>
    </nav>
    <div class="container py-3">
      <div class="row">
        <div class="col-md-12">
          <div class="container">
            <div class="card">
              <div class="card-header">
                <center><h1>Registrar Panel</h1>
                  <ol class="breadcrumb mb-4 justify-content-center">
                    <li class="breadcrumb-item active">Dashboard</li>
                  </ol></center>
                </div>
                <div class="card-body">
                  <div class="row justify-content-center ">
                    <div class="col-xl-2 col-md-6">
                      <div class="card bg-primary text-white mb-4">
                        <div class="card-body text-center"><h3>TOTAL APPLICANTS</h3></div>

                        <?php   include ("../config.php");
                        $sql= "SELECT id FROM `uccp_admission` ORDER BY id";
                        $result = mysqli_query($conn,$sql);
                        $row = mysqli_num_rows($result);
                        if($row > 0){
                          echo   '<h3 class="mb-3 text-center">'.$row.'</h3>';
                        }else {
                          echo   '<h3 class="mb-3 text-center">'.'0'.'</h3>';
                        }
                        ?>
                      </div>

                    </div>
                    <div class="col-xl-2 col-md-6 ">
                      <div class="card bg-primary text-white mb-4">
                        <div class="card-body text-center"><h3>TOTAL EXAMINEE</h3></div>

                        <?php   include ("../config.php");
                        $sql= "SELECT id FROM `uccp_examinees` ORDER BY id";
                        $result = mysqli_query($conn,$sql);
                        $row = mysqli_num_rows($result);
                        if($row > 0){
                          echo   '<h2 class="mb-3 text-center">'.$row.'</h2>';
                        }else {
                          echo   '<h2 class="mb-3 text-center">'.'0'.'</h2>';
                        }
                        ?>
                      </div>


                    </div>
                    <div class="col-xl-2 col-md-6 ">
                      <div class="card bg-primary text-white mb-4">
                        <div class="card-body text-center"><h3>TOTAL OF PASSERS</h3></div>

                        <?php   include ("../config.php");
                        $sql= "SELECT id FROM `uccp_passers` ORDER BY id";
                        $result = mysqli_query($conn,$sql);
                        $row = mysqli_num_rows($result);
                        if($row > 0){
                          echo   '<h2 class="mb-3 text-center">'.$row.'</h2>';
                        }else {
                          echo   '<h2 class="mb-3 text-center">'.'0'.'</h2>';
                        }
                        ?>
                      </div>


                    </div>
                    <div class="col-xl-2 col-md-6 ">
                      <div class="card bg-primary text-white mb-4">
                        <div class="card-body text-center"><h3>TOTAL OF ENROLLEE</h3></div>


                        <?php   include ("../config.php");
                        $sql= "SELECT id FROM `uccp_enrollee` ORDER BY id";
                        $result = mysqli_query($conn,$sql);
                        $row = mysqli_num_rows($result);
                        if($row > 0){
                          echo   '<h2 class="mb-3 text-center">'.$row.'</h2>';
                        }else {
                          echo   '<h2 class="mb-3 text-center">'.'0'.'</h2>';
                        }
                        ?>
                      </div>


                    </div>
                    <div class="col-xl-2 col-md-6 ">
                      <div class="card bg-primary text-white mb-4">
                        <div class="card-body text-center"><h3>TOTAL ENROLLED</h3></div>
                        <?php   include ("../config.php");
                        $sql= "SELECT id FROM `uccp_enrolled` ORDER BY id";
                        $result = mysqli_query($conn,$sql);
                        $row = mysqli_num_rows($result);
                        if($row > 0){
                          echo   '<h2 class="mb-3 text-center">'.$row.'</h2>';
                        }else {
                          echo   '<h2 class="mb-3 text-center">'.'0'.'</h2>';
                        }
                        ?>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php
  include 'include/footer.php';
  ?>
