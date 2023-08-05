<?php
include("../include/config.php");

$output = '';

$output .= ' 
<label for="name" class="form-label mt-1">Name</label>
<select class="form-control" id="name_irregs" style="width:100%">
    <option value="">Select</option>
';

$q = "SELECT * FROM `uccp_studentinfo` WHERE remarks='Irregular';";
$results = mysqli_query($conn, $q);

while ($r = mysqli_fetch_assoc($results)) {
    $output .= '<option>' . $r['name'] . '</option>';
}

$output .= '</select>';

$output .= '<label for="Courses" class="form-label">Subject Code</label><br>
<select class="form-control" id="subcode_irreg" style="width:100%">
    <option value="" class="chosen">Select</option>';

$sql = "SELECT * FROM `uccp_approvedcurriculum` WHERE `availability` = 'Accredit';";
$result = mysqli_query($conn, $sql);

while ($r1 = mysqli_fetch_assoc($result)) {
    $output .= '<option value="' . $r1['Subcode'] . '">' . $r1['Subcode'] . '</option>';
};

$output .= '</select>';

$output .= '<label for="Courses" class="form-label">Subject Name</label>
<select class="form-control" id="subname_irreg" style="width:100%">
    <option value="" class="chosen">Select</option>
</select>';

$output .= '<label for="Courses" class="form-label">Units</label>
<select class="form-control" id="units_irreg" style="width:100%">
    <option value="" class="chosen">Select</option>
</select>';

$output .= '<label for="Courses" class="form-label mt-1">DAY</label>
<select class="form-control" id="day_irreg" style="width:100%">
    <option value="" disabled selected>Select</option>
    <option value="Monday">Monday</option>
    <option value="Tuesday">Tuesday</option>
    <option value="Wednesday">Wednesday</option>
    <option value="Thursday">Thursday</option>
    <option value="Friday">Friday</option>
    <option value="Saturday">Saturday</option>
    <option value="Sunday">Sunday</option>
</select>';

$output .= '<label for="Courses" class="form-label mt-1">Sem</label>
<select class="form-control" id="sem_irreg" style="width:100%">
    <option value="" disabled selected>Select</option>
    <option value="1st">1st</option>
    <option value="2nd">2nd</option>
</select>';

$output .= '<label for="Courses" class="form-label">Start Time</label>
<input type="text" class="form-control" id="start-time_irreg" placeholder="Enter Start Time">';

$output .= '<label for="Courses" class="form-label">End Time</label>
<input type="text" class="form-control" id="end-time_irreg" placeholder="Enter End-Time">';

$output .= '<label for="Courses" class="form-label">Professor</label><br>
<select class="form-control" id="professor_irreg" style="width:100%">
    <option value="" class="chosen">Select</option>';

$sql = "SELECT * FROM `uccp_professor`";
$result = mysqli_query($conn, $sql);

while ($r1 = mysqli_fetch_assoc($result)) {
    $output .= '<option>' . $r1['fullname'] . '</option>';
}

$output .= '</select>';

$output .= '<label for="Courses" class="form-label">Room</label>
<input type="text" class="form-control" id="room_irreg" placeholder="Enter Room">';

echo $output;
?>

<script type="text/javascript">
    $(document).ready(function () {
        $("#name_irregs").select2({
            dropdownParent: $('#AddIrreg .modal-content')
        });

        $("#subcode_irreg").select2({
            dropdownParent: $('#AddIrreg .modal-content')
        });

        $("#subname_irreg").select2({
            dropdownParent: $('#AddIrreg .modal-content')
        });

        $("#units_irreg").select2({
            dropdownParent: $('#AddIrreg .modal-content')
        });

        $("#professor_irreg").select2({
            dropdownParent: $('#AddIrreg .modal-content')
        });

        function fetchSubcodeData(subcode) {
        $.ajax({
          url: 'sidebarpage/irreg_dropdown_subname_units.php',
          type: 'POST',
          data: {
            subcode: subcode
          },
          success: function(response) {
            var data = JSON.parse(response);
     
        $('#subname_irreg').html('<option value="' + data.description + '">' + data.description + '</option>');
        $('#units_irreg').html('<option value="' + data.units + '">' + data.units + '</option>');
           
          }
        });
      }

      // AJAX request to fetch data based on subcode selection
      $('#subcode_irreg').on('change', function() {
        var subcode = $(this).val();
        fetchSubcodeData(subcode);
      });
    });

    
  
</script>
