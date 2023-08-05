<div class="container py-3">
    <div class="row">
          <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <h1 align = "center">LIST OF Irregular Student</h1>
                  <div class="mb-4 text-center mt-4 " id="vb">
                      <select class="form-control" id="Irregname" >
                        <option value="" id="op">Select</option>
                          <?php
                          
                            // while($row = mysqli_fetch_assoc($result)){
                            //  echo '<option>'.$row['courseyearsection'].'</option>'; 
                            // }
                           ?>
                      </select>
                  </div>


                  <button type="button" class="btn btn-primary col-sm-2 mb-3" id="addSchedIrreg" data-bs-toggle="modal" data-bs-target="#AddIrreg"><i class="fa fa-plus"></i></button>
                </div>
                  <div class="card-body">
                     <table id="scheduleirreg" class="table text-center  cell-border table-striped table-hover" style="width:100%">
                                       <thead>
                                           <tr align = "center">
                                      
                                             <th class="text-center">Name</th>
                                             <th class="text-center">Subject Details</th>
                                             <th class="text-center">Units</th>
                                             <th class="text-center">DAY</th>
                                             <th class="text-center">Sem</th>
                                             <th class="text-center">Start-Time</th>
                                             <th class="text-center">End-Time</th>
                                             <th class="text-center">Professor</th>
                                             <th class="text-center">Room</th>
                                             <th class="text-center">Operation</th>
                                           </tr>
                                       </thead>
                         </table>
                 </div>
               </div>
             </div>
           </div>
         </div>
       


           
         <script type="text/javascript">
       $("document").ready(function () {

        $('#addSchedIrreg').click(function(){
                   
                   $.ajax({
                       url: 'sidebarpage/schedulemodalbodyirreg.php',
                       type: 'post',
                       data: {},
                       success: function(response){ 
                           $('#scheduleModalbodyirreg').html(response); 
                           $('#AddIrreg').modal('show'); 
                       }
                   });
               });



        var sched=   $('#scheduleirreg').DataTable({
           'serverside':true,
           'processing':true,
           'paging':true,
           "columnDefs": [
            {"className": "dt-center", "targets": "_all"},

        ],
                       'ajax':{

                         'url': 'sidebarpage/tableirreg.php',
                         'type':'post',

                       },
                       'fnCreateRow':function(nRow,aData,iDataIndex){
                         $(nRow).attr('id',aData[0]);
                       },
                     });









$("#subcode_irreg").select2({
    dropdownParent: $('#AddIrreg .modal-content')

});

$("#subname_irreg").select2({
  dropdownParent: $('#AddIrreg .modal-content')

});

$("#professor_irreg").select2({
  dropdownParent: $('#AddIrreg .modal-content')

});

$("#name_irregs").select2({
  dropdownParent: $('#AddIrreg .modal-content')

});



$("#update_professor_i").select2({
  dropdownParent: $('#update_i .modal-content')

});


$("#update_subname_i").select2({
  dropdownParent: $('#update_i .modal-content')

});

$("#update_subcode_i").select2({
  dropdownParent: $('#update_i .modal-content')

});

$("#name_irregs_i").select2({
  dropdownParent: $('#update_i .modal-content')

});


            });

   

function addschedtoirreg(){


     var name =$('#name_irregs').val();
     var sem =$('#sem_irreg').val();
     var subcode =$('#subcode_irreg').val();
     var subname =$('#subname_irreg').val();
     var day =$('#day_irreg').val();
     var starttime =$('#start-time_irreg').val();
     var endtime =$('#end-time_irreg').val();
     var professor=$('#professor_irreg').val();
     var room =$('#room_irreg').val();
     var units =$('#units_irreg').val();



     if( name, subcode, subname, day, starttime ,endtime,professor,room== ""){
       alert("Please fill out missing fields");
       $('#name_irregs').val('');
       $('#subcode_irreg').val('');
       $('#sem_irreg').val('');
       $('#subname_irreg').val('');
       $('#day_irreg').val('');
       $('#start-time_irreg').val('');
       $('#end-time_irreg').val('');
       $('#professor_irreg').val('');
       $('#room_irreg').val('');
       $('#units_irreg').val('');

       return false;
     }

       $.ajax({

           url:'sidebarpage/add-sched-irreg.php',
           type: 'post',
           data: {name: name , subcode:subcode ,subname:subname,sem:sem ,day:day , starttime:starttime ,endtime:endtime, professor:professor,room:room,units:units  },
           success:function(data,status){

             var json = JSON.parse(data);
             status = json.status;

             if(status =='success'){
             $('#scheduleirreg').DataTable().ajax.reload();
            //  $('#cyss').load('sidebarpage/schedDropdown.php');
            //  $('#masterlist-section').load('sidebarpage/masterlistDropdown.php');
             }

             $('#name_irregs').val("").trigger('change');
             $("#subcode_irreg").val('').trigger('change');
             $("#subname_irreg").val('').trigger('change');
             $('#day_irreg').val("");
             $('#start-time_irreg').val("");
             $('#end-time_irreg').val("");
             $("#professor_irreg").val('').trigger('change');
             $('#room_irreg').val("");
             $('#units_irreg').val("");
    
           }
       })

 }

 

 
 function updateirreg(update){

$('#hiddendatairreg').val(update);
$.post("sidebarpage/update-irregsched.php",{update:update},function(data,
 status){
   var x = JSON.parse(data);
    
   
   $('#name_irregs_i').val(x.name).trigger('change');
   $('#update_subname_i').val(x.Description).trigger('change');
   $('#update_subcode_i').val(x.Subcode).trigger('change');
   $('#update_room_i').val(x.Room);
   $('#update_professor_i').val(x.Professor).trigger('change');
   $('#update_end-time_i').val(x.EndTime);
   $('#update_start-time_i').val(x.StartTime);
   $('#update_day_i').val(x.Day);
   $('#update_units_i').val(x.Units);
   $('#update_sem_irreg_i').val(x.Sem);

  

});
$('#update_i').modal("show");

  }



  function updateSched_i(){


var hiddendatairreg = $('#hiddendatairreg').val();


var room = $('#update_room_i').val();
var prof = $('#update_professor_i').val();
var et = $('#update_end-time_i').val();
var st = $('#update_start-time_i').val();
var day = $('#update_day_i').val();
var units = $('#update_units_i').val();
var subname = $('#update_subname_i').val();
var subcode = $('#update_subcode_i').val();
var sem  = $('#update_sem_irreg_i').val();
var name= $('#name_irregs_i').val();



$.post("sidebarpage/update-irregsched.php", {
  hiddendatairreg:hiddendatairreg,name:name,room:room,prof:prof,
et:et,st:st,day:day,units:units,subname:subname,subcode:subcode,sem:sem
},function(data,status){
  
var json = JSON.parse(data);
status = json.status;

if(status =='success'){

$('#scheduleirreg').DataTable().ajax.reload();


}
});
}


function deleteirreg(i){
        $.ajax({

            url:'sidebarpage/delete-irregsched.php',
            type: 'post',
            data: {deleteI: i},
            success:function(data,status){
              var json = JSON.parse(data);
              status = json.status;
              if(status =='success'){
            $('#scheduleirreg').DataTable().ajax.reload();
              }
            }
        })
  }



       </script>
       
       <!-- Modal -->
   <div class="modal fade" id="AddIrreg" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title" id="exampleModalLabel">Manage Irregular Student</h5>
           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
     <div class="modal-body" id="scheduleModalbodyirreg">
        
               
       </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           <button type="button" class="btn btn-primary"  data-bs-dismiss="modal" onclick="addschedtoirreg()">ADD</button>
         </div>
       </div>
     </div>
   </div>




      <!--UPDATE Modal -->
   <div class="modal fade" id="update_i" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title" id="exampleModalLabel">CURRICULUM</h5>
           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
     <div class="modal-body">
         
        
     <label for="name" class="form-label mt-1">Name</label>
     <select class="form-control"  id="name_irregs_i" style="width:100%" >
     <option value="">Select</option>
        <?php
            $q = "SELECT  * FROM `uccp_studentinfo` WHERE remarks='Irregular';";
            $results = mysqli_query($conn,$q);
            while($r = mysqli_fetch_assoc($results)){
          echo   '<option>'.$r['name'].'</option>';
              }
          ?>
  </select>




 <label for="Courses" class="form-label">Subject Code</label> <br>
               <select class="form-control"  id="update_subcode_i" style="width:100%" >
                 <option value="" class="chosen" >Select</option>
                   <?php
                   $sql= "SELECT * FROM `uccp_approvedcurriculum` WHERE `availability` = 'Accredit';";
                   $result = mysqli_query($conn,$sql);

                     while($r1 = mysqli_fetch_assoc($result)){
                       echo '<option>'.$r1['Subcode'].'</option>';;
                     }
                    ?>

               </select>
  

 <label for="Courses" class="form-label">Subject Name</label>
               <select class="form-control"  id="update_subname_i" style="width:100%" >
                 <option value="" class="chosen" >Select</option>
                   <?php
                   $sql= "SELECT * FROM `uccp_approvedcurriculum` WHERE `availability` = 'Accredit'; ";
                   $result = mysqli_query($conn,$sql);

                     while($r1 = mysqli_fetch_assoc($result)){
                       echo '<option>'.$r1['Description'].'</option>';;
                     }
                    ?>

               </select>
               
                <label for="Courses" class="form-label">Units</label>
               <select class="form-control"  id="update_units_i" style="width:100%" >
                 <option value="" class="chosen" >Select</option>
                   <?php
                   $sql= "SELECT DISTINCT Units FROM `uccp_approvedcurriculum` WHERE `availability` = 'Accredit';";
                   $result = mysqli_query($conn,$sql);

                     while($r1 = mysqli_fetch_assoc($result)){
                       echo '<option>'.$r1['Units'].'</option>';;
                     }
                    ?>

               </select>

 <label for="Courses" class="form-label mt-1">DAY</label>
               <select class="form-control"  id="update_day_i" style="width:100%" >
                 <option value="" disabled selected>Select</option>
                 <option value="Monday" >Monday</option>
                 <option value="Tuesday" >Tuesday</option>
                 <option value="Wednesday" >Wednesday</option>
                 <option value="Thursday" >Thursday</option>
                 <option value="Friday" >Friday</option>
                 <option value="Saturday" >Saturday</option>
                 <option value="Sunday" >Sunday</option>
               </select>

               <label for="Courses" class="form-label mt-1">Sem</label>
               <select class="form-control"  id="update_sem_irreg_i" style="width:100%" >
                <option value="" disabled selected>Select</option>
                <option value="1st" >1st</option>
                <option value="2nd" >2nd</option>
              </select>
               
               <label for="Courses" class="form-label">Start Time</label>
               <input type="text" class="form-control" id="update_start-time_i" placeholder="Enter Start Time">

               <label for="Courses" class="form-label">End Time</label>
               <input type="text" class="form-control" id="update_end-time_i" placeholder="Enter End-Time">
               
               
              <label for="Courses" class="form-label">Professor</label> <br>
               <select class="form-control"  id="update_professor_i" style="width:100%" >
                 <option value="" class="chosen" >Select</option>
                   <?php
                   $sql= "SELECT * FROM `uccp_professor`";
                   $result = mysqli_query($conn,$sql);

                     while($r1 = mysqli_fetch_assoc($result)){
                       echo '<option>'.$r1['fullname'].'</option>';;
                     }
                    ?>

               </select>
  
  
               
                <label for="Courses" class="form-label">Room</label>
               <input type="text" class="form-control" id="update_room_i" placeholder="Enter Room">

               
       </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           <button type="button" class="btn btn-primary"  data-bs-dismiss="modal" onclick="updateSched_i()">UPDATE</button>
            <input type="hidden" id="hiddendatairreg">
         </div>
       </div>
     </div>
   </div>
