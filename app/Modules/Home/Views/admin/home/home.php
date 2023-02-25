 <?= $this->extend('\Modules\Master\Views\master') ?>
 <?= $this->section('content') ?>
 
<div class="page-content">
        <div class="container-fluid">

 <!-- start page title -->
 <div class="row">
     <div class="col-12">
         <div class="page-title-box d-sm-flex align-items-center justify-content-between">
             <h4 class="mb-sm-0">Golden Tower Dashboard</h4>

             <div class="page-title-right">
                 <ol class="breadcrumb m-0">
                     <li class="breadcrumb-item"><a href="javascript: void(0);">Golden Tower</a></li>
                     <li class="breadcrumb-item active">Dashboard</li>
                 </ol>
             </div>
         </div>
     </div>
 </div>
 <!-- end page title -->
 <div class="row">
     <div class="col-xl-12">
         <div class="card">
             <div class="card-body">
                 <h4 class="card-title mb-4"> Quick Link</h4>
                 <div class="quick_link_list">
                     <a href="<?= base_url('admin/addrent'); ?>">
                         <i class="ri-money-dollar-box-line color-primary  font-size-24"></i>
                         add new <br> Rent
                     </a>
                     <a href="<?php echo base_url() ?>/admin/tenant_add"">
                         <i class=" ri-team-line color-primary  font-size-24"></i>
                         add new <br> tenant
                     </a>
                     <a href="<?php echo base_url('admin/addbill'); ?>">
                         <i class=" ri-secure-payment-line color-primary  font-size-24"></i>
                         add new <br> Bill
                     </a>
                     <a href="<?php echo base_url() ?>/admin/meeting_add">
                         <i class="ri-account-pin-box-line color-primary  font-size-24"></i>
                         add new <br> Meeting
                     </a>
                     <a href="<?php echo base_url('admin/addnotice'); ?>">
                         <i class="ri-user-voice-line color-primary  font-size-24"></i>
                         add new <br> Notice
                     </a>
                     <a href="<?php echo base_url() ?>/admin/maintenance_add">
                         <i class=" ri-scissors-cut-line color-primary  font-size-24"></i>
                         Maintenance <br> Cost
                     </a>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <div class="row">

     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="ri-building-4-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Floor</p>
                         <h5 class="mb-3"><?=$total_floors;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/floor_list')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="ri-community-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Unit</p>
                         <h5 class="mb-3"><?=$total_units;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/unit_list')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="ri-user-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Owner</p>
                         <h5 class="mb-3"><?=$total_owners;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/ownerlist')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class=" ri-team-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Tenant</p>
                         <h5 class="mb-3"><?=$total_tenants;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/tenant_list')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="ri-shield-user-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Employee</p>
                         <h5 class="mb-3"><?=$total_employees;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/employeelist')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="ri-group-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Committee</p>
                         <h5 class="mb-3"><?=$total_committees;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/committee_list')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class=" ri-money-dollar-box-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Rent</p>
                         <h5 class="mb-3"><?=$total_rents;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/rentlist')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class=" ri-scissors-cut-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Maintenance</p>
                         <h5 class="mb-3"><?=$total_maintenances;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/maintenance_list')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="  ri-exchange-funds-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Fund</p>
                         <h5 class="mb-3"><?=$total_funds;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/fundlist')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class=" ri-exchange-dollar-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Owner Utility</p>
                         <h5 class="mb-3"><?=$total_o_utilitys;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/ownerutilitylist')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="ri-secure-payment-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Employee Salary</p>
                         <h5 class="mb-3"><?=$total_e_salaries;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/employeesalary')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-xl-3 col-sm-6">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex text-muted">
                     <div class="flex-shrink-0  me-3 align-self-center">
                         <div class="avatar-sm">
                             <div class="avatar-title bg-light rounded-circle text-primary font-size-24">
                                 <i class="ri-question-answer-line"></i>
                             </div>
                         </div>
                     </div>
                     <div class="flex-grow-1 overflow-hidden">
                         <p class="mb-1">Total Complain</p>
                         <h5 class="mb-3"><?=$total_complains;?></h5>
                         <p class="text-truncate mb-0"><span class="text-primary me-2"> More Info <a href="<?php echo base_url('admin/complain_list')?>"><i class="ri-arrow-right-up-line align-bottom ms-1"></i></a></span> </p>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>

     <!-- end col -->
 </div>
 <!-- end row -->

 <div class="row">
     <div class="col-xl-12">
         <div class="card">
             <div class="card-body">
                 <div class="d-flex align-items-center">
                     <div class="flex-grow-1">
                         <h5 style="display:flex;" class="card-title">Monthly Deposit Bill Graph For 
                            <p class="year">&nbsp;Year&nbsp; </p> 
                            <p class="half_year">&nbsp;6 month of year&nbsp;</p> 
                            <p class="month">&nbsp;this month of year&nbsp;</p> 
                         <?php echo date("Y"); ?></h5>
                     </div>
                     <div class="flex-shrink-0">
                         <div>
                             <!-- <button type="button" class="btn btn-soft-secondary btn-sm">
                                 ALL
                             </button> -->
                             <button id="this_month_chart" type="button" class="btn btn-soft-primary btn-sm">
                                 1M
                             </button>
                             <button id="this_half_year_chart" type="button" class="btn btn-soft-secondary btn-sm">
                                 6M
                             </button>
                             <button id="this_year_chart" type="button" class="btn btn-soft-secondary btn-sm active">
                                 1Y
                             </button>
                         </div>
                     </div>
                 </div>

                 <div>
                     <div id="mixed-chart" class="apex-charts year_chart" ></div>
                     <div id="mixed-chart-half-year" class="apex-charts half_year_chart"></div>
                     <div id="mixed-chart-month" class="apex-charts month_chart"></div>
                     
                 </div>
             </div>
             <!-- end card-body -->

             <div class="card-body border-top">
                 <div class="text-muted text-center">
                     <div class="row">
                         <div class="col-4 border-end">
                             <div>
                                 <p class="mb-2"><i class="mdi mdi-circle font-size-12 text-primary me-1"></i> Expenses</p>

                                 <h5 class="font-size-16 mb-0 year_maintenance">$ <?=$year_maintenance_costs?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_maintenance=$year_maintenance_costs/100; echo $percentage_maintenance;?> %</span></h5>

                                 <h5 class="font-size-16 mb-0 half_year_maintenance">$ <?=$half_year_maintenance_costs?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_maintenance_half_year=$half_year_maintenance_costs/100; echo $percentage_maintenance_half_year;?> %</span></h5>

                                 <h5 class="font-size-16 mb-0 month_maintenance">$ <?=$maintenance_costs_this_month?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_maintenance_this_month=$maintenance_costs_this_month/100; echo $percentage_maintenance_this_month;?> %</span></h5>

                             

                                 
                             </div>
                         </div>
                         <div class="col-4 border-end">
                             <div>
                                 <p class="mb-2"><i class="mdi mdi-circle font-size-12 text-light me-1"></i> Maintenance</p>
                                 
                                 <h5 class="font-size-16 mb-0 year_maintenance">$ <?=$year_maintenance_costs?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_maintenance=$year_maintenance_costs/100; echo $percentage_maintenance;?> %</span></h5>

                                 <h5 class="font-size-16 mb-0 half_year_maintenance">$ <?=$half_year_maintenance_costs?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_maintenance_half_year=$half_year_maintenance_costs/100; echo $percentage_maintenance_half_year;?> %</span></h5>

                                 <h5 class="font-size-16 mb-0 month_maintenance">$ <?=$maintenance_costs_this_month?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_maintenance_this_month=$maintenance_costs_this_month/100; echo $percentage_maintenance_this_month;?> %</span></h5>
                             </div>
                         </div>
                         <div class="col-4">
                             <div>
                                 <p class="mb-2"><i class="mdi mdi-circle font-size-12 text-danger me-1"></i> Profit</p>
                                 <h5 class="font-size-16 mb-0 year_rents">$ <?=$year_rents?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_rents=$year_rents/100; echo $percentage_rents;?> %</span></h5>

                                 <h5 class="font-size-16 mb-0 half_year_rents">$ <?=$half_year_rents?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_rents_half_year=$half_year_rents/100; echo $percentage_rents_half_year;?> %</span></h5>

                                 <h5 class="font-size-16 mb-0 month_rents">$ <?=$rent_all_this_month?> <span class="text-success font-size-12"><i class="mdi mdi-menu-up font-size-14 me-1"></i><?php $percentage_rents_this_month=$rent_all_this_month/100; echo $percentage_rents_this_month;?> %</span></h5>

                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->


     <!-- end col -->
 </div>
 <!-- end row -->

 <div class="row">
     <div class="col-lg-6">
         <div class="card">
             <div class="card-body">
                 <h4 class="card-title mb-4"> Last 5 Complains</h4>

                 <div class="table-responsive">
                     <table class="table table-centered table-nowrap mb-0">
                         <thead>
                             <tr>

                                 <th scope="col">Title</th>
                                 <th scope="col">Issue Date</th>

                                 <th scope="col">Action</th>
                             </tr>
                         </thead>
                         <tbody>

                         <?php if(!empty($complains)){ foreach($complains as $complain){?>
                             <tr>
                                 <td>
                                     <p class="mb-1 font-size-12"><?=$complain['comtitle'];?></p>
                                     <h5 class="font-size-15 mb-0"><?=$complain['comdate'];?></h5>
                                 </td>
                                 <td><?=$complain['comdate'];?></td>
                                 <td>
                                     <a href="<?php echo base_url('admin/complain_list'); ?>" class="view_complain btn btn-outline-success btn-sm"><i class="ri-eye-line"></i> </a>
                                 </td>
                             </tr>
                             
                             <?php }
                             }else{ ?>
                                  <h5 style="text-align: center;">There is no data Yet</h5>
                            <?php }?>
                             


                         </tbody>
                     </table>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
     <div class="col-lg-6">
         <div class="card">
             <div class="card-body">
                 <h4 class="card-title mb-4">Last 5 Visitor</h4>

                 <div class="table-responsive">
                     <table class="table table-centered table-nowrap mb-0">
                         <thead>
                             <tr>

                                 <th scope="col">Date</th>
                                 <th scope="col">Visitor name</th>

                                 <th scope="col">Action</th>
                             </tr>
                         </thead>
                         <tbody>
                         <?php if(!empty($complains)){ foreach($visitors as $visitor){?>
                             <tr>

                                 <td>
                                     <h5 class="font-size-15 mb-0"><?=$visitor['visientrydate'];?> </h5>
                                 </td>
                                 <td><?=$visitor['visiname'];?></td>


                                 <td>
                                     <a href="<?php echo base_url('admin/visitor_list'); ?>"  class="view_visitor btn btn-outline-success btn-sm"><i class="ri-eye-line"></i> </a>
                                 </td>
                             </tr>
                             <?php }?>

                         </tbody>
                         <?php }else{ ?>
                                  <h5 style="text-align: center;">There is no data Yet</h5>
                            <?php }?>
                     </table>
                 </div>
             </div>
             <!-- end card-body -->
         </div>
         <!-- end card -->
     </div>
     <!-- end col -->
 </div>
 <!-- end row -->
        </div>
</div>
<script>
   
        $(".year").show();
        $(".half_year").hide();
        $(".month").hide();

        $(".year_rents").show();
        $(".half_year_rents").hide();
        $(".month_rents").hide();
      
        $(".year_maintenance").show();
        $(".half_year_maintenance").hide();
        $(".month_maintenance").hide();

        $("#mixed-chart").css("display","block");
        $("#mixed-chart-half-year").css("display","none");
        $("#mixed-chart-month").css("display","none");

    $("#this_year_chart").click(function(){
        $(".year").show();
        $(".half_year").hide();
        $(".month").hide();

        $(".year_rents").show();
        $(".half_year_rents").hide();
        $(".month_rents").hide();

        $(".year_maintenance").show();
        $(".half_year_maintenance").hide();
        $(".month_maintenance").hide();

        $("#mixed-chart").css("display","block");
        $("#mixed-chart-half-year").css("display","none");
        $("#mixed-chart-month").css("display","none");

        $('div').each(function() { 
            if($(this).attr('id') == 'mixed-chart'){
      var options = {
        series: [
             { name: "Expenses", type: "column", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>, <?=$maintenance_costs[7]?>, <?=$maintenance_costs[8]?>, <?=$maintenance_costs[9]?>, <?=$maintenance_costs[10]?>, <?=$maintenance_costs[11]?>, <?=$maintenance_costs[12]?>] },
            { name: "Maintenance", type: "area", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>, <?=$maintenance_costs[7]?>, <?=$maintenance_costs[8]?>, <?=$maintenance_costs[9]?>, <?=$maintenance_costs[10]?>, <?=$maintenance_costs[11]?>, <?=$maintenance_costs[12]?>] },

            { name: "Profit", type: "line", data: [<?=$all_rents[1]?>, <?=$all_rents[2]?>, <?=$all_rents[3]?>, <?=$all_rents[4]?>, <?=$all_rents[5]?>, <?=$all_rents[6]?>, <?=$all_rents[7]?>, <?=$all_rents[8]?>, <?=$all_rents[9]?>, <?=$all_rents[10]?>, <?=$all_rents[11]?>, <?=$all_rents[12]?>] },
        ],
        chart: { height: 350, type: "line", stacked: !1, toolbar: { show: !1 } },
        stroke: { width: [0, 1, 1], dashArray: [0, 0, 5], curve: "smooth" },
        plotOptions: { bar: { columnWidth: "18%" } },
        legend: { show: !1 },
        fill: { opacity: [0.85, 0.25, 1], gradient: { inverseColors: !1, shade: "light", type: "vertical", opacityFrom: 0.85, opacityTo: 0.55, stops: [0, 100, 100, 100] } },
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        markers: { size: 0 },
        colors: ["#0bb197", "#eff2f7", "#ff3d60"],
    },
    chart = new ApexCharts(document.querySelector("#mixed-chart"), options);

    chart.render(); 
   }

        });
    });

    $("#this_half_year_chart").click(function(){
        $(".year").hide();
        $(".half_year").show();
        $(".month").hide();

        $(".half_year_rents").show();
        $(".year_rents").hide();
        $(".month_rents").hide();

        $(".year_maintenance").hide();
        $(".half_year_maintenance").show();
        $(".month_maintenance").hide();

        $("#mixed-chart").css("display","none");
        $("#mixed-chart-half-year").css("display","block");
        $("#mixed-chart-month").css("display","none");

        $('div').each(function() {
        if($(this).attr('id') == 'mixed-chart-half-year'){
        var options = {
        series: [
             { name: "Expenses", type: "column", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>] },

            { name: "Maintenance", type: "area", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>] },

            { name: "Profit", type: "line", data: [<?=$all_rents[1]?>, <?=$all_rents[2]?>, <?=$all_rents[3]?>, <?=$all_rents[4]?>, <?=$all_rents[5]?>, <?=$all_rents[6]?>] },
        ],
        chart: { height: 350, type: "line", stacked: !1, toolbar: { show: !1 } },
        stroke: { width: [0, 1, 1], dashArray: [0, 0, 5], curve: "smooth" },
        plotOptions: { bar: { columnWidth: "18%" } },
        legend: { show: !1 },
        fill: { opacity: [0.85, 0.25, 1], gradient: { inverseColors: !1, shade: "light", type: "vertical", opacityFrom: 0.85, opacityTo: 0.55, stops: [0, 100, 100, 100] } },
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
        markers: { size: 0 },
        colors: ["#0bb197", "#eff2f7", "#ff3d60"],
    },
    chart = new ApexCharts(document.querySelector("#mixed-chart-half-year"), options);

    chart.render(); 
   }
});
        
    });

    $("#this_month_chart").click(function(){
        $(".year").hide();
        $(".half_year").hide();
        $(".month").show();

        $(".month_rents").show();
        $(".year_rents").hide();
        $(".half_year_rents").hide();

        $(".year_maintenance").hide();
        $(".half_year_maintenance").hide();
        $(".month_maintenance").show();

        $("#mixed-chart").css("display","none");
        $("#mixed-chart-half-year").css("display","none");
        $("#mixed-chart-month").css("display","block");


        $('div').each(function() {
        if($(this).attr('id') == 'mixed-chart-month'){
      var options = {
        series: [
             { name: "Expenses", type: "column", data: [<?=$maintenance_costs_weeks['week1']?>, <?=$maintenance_costs_weeks['week2']?>, <?=$maintenance_costs_weeks['week3']?>, <?=$maintenance_costs_weeks['week4']?>, <?=$maintenance_costs_weeks['week5']?>] },

            { name: "Maintenance", type: "area", data: [<?=$maintenance_costs_weeks['week1']?>, <?=$maintenance_costs_weeks['week2']?>, <?=$maintenance_costs_weeks['week3']?>, <?=$maintenance_costs_weeks['week4']?>, <?=$maintenance_costs_weeks['week5']?>] },

            { name: "Profit", type: "line", data: [<?=$all_rent_weeks['week1']?>, <?=$all_rent_weeks['week2']?>, <?=$all_rent_weeks['week3']?>, <?=$all_rent_weeks['week4']?>, <?=$all_rent_weeks['week5']?>] },
        ],
        chart: { height: 350, type: "line", stacked: !1, toolbar: { show: !1 } },
        stroke: { width: [0, 1, 1], dashArray: [0, 0, 5], curve: "smooth" },
        plotOptions: { bar: { columnWidth: "18%" } },
        legend: { show: !1 },
        fill: { opacity: [0.85, 0.25, 1], gradient: { inverseColors: !1, shade: "light", type: "vertical", opacityFrom: 0.85, opacityTo: 0.55, stops: [0, 100, 100, 100] } },
        labels: ["Week 1", "Week 2", "Week 3", "Week 4", "Week 5"],
        markers: { size: 0 },
        colors: ["#0bb197", "#eff2f7", "#ff3d60"],
    },
    chart = new ApexCharts(document.querySelector("#mixed-chart-month"), options);

    chart.render(); 
   }
});
    });
    
     $('div').each(function() { 
      if($(this).attr('id') == 'mixed-chart'){
      var options = {
        series: [
             { name: "Expenses", type: "column", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>, <?=$maintenance_costs[7]?>, <?=$maintenance_costs[8]?>, <?=$maintenance_costs[9]?>, <?=$maintenance_costs[10]?>, <?=$maintenance_costs[11]?>, <?=$maintenance_costs[12]?>] },
            { name: "Maintenance", type: "area", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>, <?=$maintenance_costs[7]?>, <?=$maintenance_costs[8]?>, <?=$maintenance_costs[9]?>, <?=$maintenance_costs[10]?>, <?=$maintenance_costs[11]?>, <?=$maintenance_costs[12]?>] },

            { name: "Profit", type: "line", data: [<?=$all_rents[1]?>, <?=$all_rents[2]?>, <?=$all_rents[3]?>, <?=$all_rents[4]?>, <?=$all_rents[5]?>, <?=$all_rents[6]?>, <?=$all_rents[7]?>, <?=$all_rents[8]?>, <?=$all_rents[9]?>, <?=$all_rents[10]?>, <?=$all_rents[11]?>, <?=$all_rents[12]?>] },
        ],
        chart: { height: 350, type: "line", stacked: !1, toolbar: { show: !1 } },
        stroke: { width: [0, 1, 1], dashArray: [0, 0, 5], curve: "smooth" },
        plotOptions: { bar: { columnWidth: "18%" } },
        legend: { show: !1 },
        fill: { opacity: [0.85, 0.25, 1], gradient: { inverseColors: !1, shade: "light", type: "vertical", opacityFrom: 0.85, opacityTo: 0.55, stops: [0, 100, 100, 100] } },
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        markers: { size: 0 },
        colors: ["#0bb197", "#eff2f7", "#ff3d60"],
    },
    chart = new ApexCharts(document.querySelector("#mixed-chart"), options);

    chart.render(); 
   }


   if($(this).attr('id') == 'mixed-chart-half-year'){
      var options = {
        series: [
             { name: "Expenses", type: "column", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>] },

            { name: "Maintenance", type: "area", data: [<?=$maintenance_costs[1]?>, <?=$maintenance_costs[2]?>, <?=$maintenance_costs[3]?>, <?=$maintenance_costs[4]?>, <?=$maintenance_costs[5]?>, <?=$maintenance_costs[6]?>] },

            { name: "Profit", type: "line", data: [<?=$all_rents[1]?>, <?=$all_rents[2]?>, <?=$all_rents[3]?>, <?=$all_rents[4]?>, <?=$all_rents[5]?>, <?=$all_rents[6]?>] },
        ],
        chart: { height: 350, type: "line", stacked: !1, toolbar: { show: !1 } },
        stroke: { width: [0, 1, 1], dashArray: [0, 0, 5], curve: "smooth" },
        plotOptions: { bar: { columnWidth: "18%" } },
        legend: { show: !1 },
        fill: { opacity: [0.85, 0.25, 1], gradient: { inverseColors: !1, shade: "light", type: "vertical", opacityFrom: 0.85, opacityTo: 0.55, stops: [0, 100, 100, 100] } },
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
        markers: { size: 0 },
        colors: ["#0bb197", "#eff2f7", "#ff3d60"],
    },
    chart = new ApexCharts(document.querySelector("#mixed-chart-half-year"), options);

    chart.render(); 
   }

   if($(this).attr('id') == 'mixed-chart-month'){
      var options = {
        series: [
             { name: "Expenses", type: "column", data: [<?=$maintenance_costs_weeks['week1']?>, <?=$maintenance_costs_weeks['week2']?>, <?=$maintenance_costs_weeks['week3']?>, <?=$maintenance_costs_weeks['week4']?>, <?=$maintenance_costs_weeks['week5']?>] },

            { name: "Maintenance", type: "area", data: [<?=$maintenance_costs_weeks['week1']?>, <?=$maintenance_costs_weeks['week2']?>, <?=$maintenance_costs_weeks['week3']?>, <?=$maintenance_costs_weeks['week4']?>, <?=$maintenance_costs_weeks['week5']?>] },

            { name: "Profit", type: "line", data: [<?=$all_rent_weeks['week1']?>, <?=$all_rent_weeks['week2']?>, <?=$all_rent_weeks['week3']?>, <?=$all_rent_weeks['week4']?>, <?=$all_rent_weeks['week5']?>] },
        ],
        chart: { height: 350, type: "line", stacked: !1, toolbar: { show: !1 } },
        stroke: { width: [0, 1, 1], dashArray: [0, 0, 5], curve: "smooth" },
        plotOptions: { bar: { columnWidth: "18%" } },
        legend: { show: !1 },
        fill: { opacity: [0.85, 0.25, 1], gradient: { inverseColors: !1, shade: "light", type: "vertical", opacityFrom: 0.85, opacityTo: 0.55, stops: [0, 100, 100, 100] } },
        labels: ["Week 1", "Week 2", "Week 3", "Week 4", "Week 5"],
        markers: { size: 0 },
        colors: ["#0bb197", "#eff2f7", "#ff3d60"],
    },
    chart = new ApexCharts(document.querySelector("#mixed-chart-month"), options);

    chart.render(); 
   }
});
 </script>

 <?= $this->endSection() ?>