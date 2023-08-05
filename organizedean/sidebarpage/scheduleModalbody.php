<?php
include("../include/config.php");

$output = '';

// $output .= '<label for="Courses" class="form-label mt-1">DAY</label>
// <select class="form-control" id="sem" style="width:100%">';


//   $s = "SELECT  sem FROM `uccp_enrollment_schedule`  WHERE status = 'open' ";
//   $results = mysqli_query($conn, $s);
  
//   while ($s = mysqli_fetch_assoc($results)) {
//     $output .= '<option value="' . $s['sem'] . '">' . $s['sem'] . '</option>';
//   }
//   $output .= '</select>';

$output .= '<label for="Courses" class="form-label">Sem</label>';
$s = "SELECT sem FROM `uccp_enrollment_schedule` WHERE status = 'open'";
$results = mysqli_query($conn, $s);

while ($row = mysqli_fetch_assoc($results)) {
    $sem = $row['sem'];
    $output .= '<input type="text" class="form-control" id="sem" placeholder="Sem" value="' . $sem . '" readonly>';
   
}




$output .= '<label for="Courses" class="form-label">Course/Yr/Section</label>
<select class="form-control" name="" id="cys" >
  <option value="" selected disabled class="chosen">Select</option>';

$q = "SELECT  * FROM `uccp_section` ";
$results = mysqli_query($conn, $q);

while ($r = mysqli_fetch_assoc($results)) {
  $output .= '<option value="' . $r['courseyearsection'] . '">' . $r['courseyearsection'] . '</option>';
}
$output .= '</select>';



$output .= '<label for="Courses" class="form-label" hidden>Course</label>
<input type="text" class="form-control" id="course" placeholder="Course" hidden>';

$output .= '<label for="Courses" class="form-label" hidden>Year</label>
<input type="text" class="form-control" id="year" placeholder="Year" hidden>';

$output .= '<label for="Courses" class="form-label">Subject Code</label><br>
<select class="form-control" id="subcode"  style="width:100%">
  <option value="" selected disabled class="chosen">Select</option>
</select>';

$output .= '<label for="Courses" class="form-label">Subject Name</label>
<select class="form-control" id="subname"  style="width:100%">
  <option value="" selected disabled class="chosen">Select</option>
</select>';

$output .= '<label for="Courses" class="form-label">Units</label>
<select class="form-control" id="units"   style="width:100%">
  <option value="" class="chosen">Select</option>
</select>';

$output .= '<label for="Courses" class="form-label mt-1">DAY</label>
<select class="form-control" id="day" style="width:100%">
  <option value="" disabled selected>Select</option>
  <option value="Monday">Monday</option>
  <option value="Tuesday">Tuesday</option>
  <option value="Wednesday">Wednesday</option>
  <option value="Thursday">Thursday</option>
  <option value="Friday">Friday</option>
  <option value="Saturday">Saturday</option>
  <option value="Sunday">Sunday</option>
</select>';

$output .= '<label for="Courses" class="form-label">Start Time</label>
<input type="text" class="form-control" id="start-time" placeholder="Enter Start Time">

<label for="Courses" class="form-label">End Time</label>
<input type="text" class="form-control" id="end-time" placeholder="Enter End-Time">

<label for="Courses" class="form-label">Professor</label><br>
<select class="form-control" id="professor" style="width:100%">
  <option value="" class="chosen">Select</option>';


  $sql = "SELECT * FROM `uccp_professor`";
  $result = mysqli_query($conn, $sql);
  
  while ($r1 = mysqli_fetch_assoc($result)) {
    $output .= '<option>' . $r1['fullname'] . '</option>';
  }
  
  $output .= '</select>';
  

$output .= '<label for="Courses" class="form-label">Room</label>
<input type="text" class="form-control" id="room" placeholder="Enter Room">';

echo $output;

mysqli_close($conn);
?>

<script type="text/javascript">
$(document).ready(function() {
  $("#subcode").select2({
    dropdownParent: $('#AddSched .modal-content')
  });

  $("#subname").select2({
    dropdownParent: $('#AddSched .modal-content')
  });

  $("#professor").select2({
    dropdownParent: $('#AddSched .modal-content')
  });

  



  

  // Function to fetch data based on course/year/section selection
  function fetchData(cys) {
    
    var sem = $('#sem').val();
  
    

    $.ajax({
      url: 'sidebarpage/dependent_irreg_modal.php',
      type: 'POST',
      data: {
        cys: cys, sem:sem
      },
      success: function(response) {
        var data = JSON.parse(response);
        $('#course').val(data.course);
        $('#year').val(data.year);
        $('#subcode').html(data.subcode);

        if (data.hasOwnProperty('error')) {   // Invalid courseyearsection, clear  all fields
      
        $('#cys').html('<option value="" selected disabled class="chosen">Select</option>');
          $('#subname').html('<option value="" selected disabled class="chosen">Select</option>');
          $('#subcode').html('<option value="" class="chosen">Select</option>');
          $('#units').html('<option value="" class="chosen">Select</option>');
          $('#course').val('');
          $('#year').val('');
          $('#start-time').val('');
          $('#end-time').val('');
          $('#professor').val('').trigger('change');
          $('#room').val('');
          $('#day').val('');
        
      }
      if ($('#subcode').val() === null) {
      
          $('#subname').html('<option value="" selected disabled class="chosen">Select</option>');
          $('#units').html('<option value="" class="chosen">Select</option>');
          $('#start-time').val('');
          $('#end-time').val('');
          $('#professor').val('').trigger('change');
          $('#room').val('');
          $('#day').val('');
        }

      
      }
    });
  }

  // AJAX request to fetch data based on course/year/section selection
  $('#cys').on('change', function() {
    var cys = $(this).val();
    fetchData(cys);
  });

  function fetchSubcodeData(subcode) {
        $.ajax({
          url: 'sidebarpage/dependent_irreg_modal.php',
          type: 'POST',
          data: {
            subcode: subcode
          },
          success: function(response) {
            var data = JSON.parse(response);
     
        $('#subname').html('<option value="' + data.description + '">' + data.description + '</option>');
        $('#units').html('<option value="' + data.units + '">' + data.units + '</option>');
           
          }
        });
      }

      // AJAX request to fetch data based on subcode selection
      $('#subcode').on('change', function() {
        var subcode = $(this).val();
        fetchSubcodeData(subcode);
      });
    });



</script>
