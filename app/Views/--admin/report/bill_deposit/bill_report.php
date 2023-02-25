<?= $this->extend('admin/master') ?>
<?= $this->section('content') ?>
<div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0"><?php echo lang('report/bill_deposit.b_report'); ?></h4> 
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Golden Tower</a></li>
                                <li class="breadcrumb-item active"><?php echo lang('report/bill_deposit.b_report'); ?></li>
                            </ol>
                        </div> 
                    </div>
                </div>
            </div>
            <!-- end page title -->  

            <div class="row">
                <div class="col-lg-12"> 
                    <div class="card">
                        <div class="card-body ">
                            <h4 class="card-title mb-4"> <?php echo lang('report/bill_deposit.b_report'); ?></h4>  
                            <?php 
                            if(session()->getFlashdata('faild')){
                                echo "<h4 style='color:red;text-align:center;'>".session()->getFlashdata('faild')."</h4>";
                             }
                             ?>
                            <form action="<?= base_url('admin/billinfo')?>">
                                <div class="row">
                                    <div class="col-md-12 mt-4">
                                        <label><?php echo lang('report/bill_deposit.s_date'); ?> :</label>
                                        <input type="date" class="form-control" name="date">
                                    </div>
                                    <div class="col-md-12 mt-4">
                                        <label><?php echo lang('report/bill_deposit.s_month'); ?> :</label>
                                        <select name="month" id="ddlMonth" class="form-control">
                                            <option value="">--Select Month--</option>
                                            <?php
                                        foreach($months as $month){?>
                                            <option value="<?=$month['monthname'];?>"><?=$month['monthname'];?></option>
                                       <?php  }
                                        ?> 
                                        </select>
                                    </div>
                                    <div class="col-md-12 mt-4">
                                        <label><?php echo lang('report/bill_deposit.s_year'); ?> :</label>
                                        <select name="year" id="ddlYear" class="form-control">
                                            <option value="">--Select Year--</option>
                                            <?php
                                        foreach($years as $year){?>
                                        <option value="<?=$year['year'];?>"
                                        ><?=$year['year'];?></option>
                                        <?php  }
                                        ?>
                                        </select>
                                    </div>
                                   
                                
                                </div>
                                <div class="d-flex mt-4"> 
                                    <button class="btn btn-primary ms-auto btn-rounded"> <?php echo lang('report/bill_deposit.submit'); ?></button>
                                </div>
                            </form>
                             
                        </div>
                        <!-- end card-body -->
                    </div>
                    <!-- end card -->
                </div> 
                <!-- end col -->
            </div>
            <!-- end row -->
            
        </div>
        <!-- container-fluid -->
    </div>
    <!-- End Page-content -->
 
<!-- end main content-->
<?php echo $this->endSection('content') ?>