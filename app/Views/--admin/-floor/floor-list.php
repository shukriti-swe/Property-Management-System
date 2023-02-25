 <?= $this->extend('admin/master') ?>
 <?= $this->section('content') ?>
  <?php 
  $edit= menu_access('floor_edit');
  $delete= menu_access('floor_delete');
  ?>
 <div class="page-content">
     <div class="container-fluid">

         <!-- start page title -->
         <div class="row">
             <div class="col-12">
                 <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                     <h4 class="mb-sm-0"><?php echo lang('Floor.floor_list'); ?> </h4>

                     <div class="page-title-right">
                         <ol class="breadcrumb m-0">
                             <li class="breadcrumb-item"><a href="javascript: void(0);"><?php echo lang('Floor.golden_tower'); ?></a></li>
                             <li class="breadcrumb-item active"><?php echo lang('Floor.floor_list'); ?></li>
                         </ol>
                     </div>

                 </div>
             </div>
         </div>
         <!-- end page title -->

         <div class="row">
             <div class="col-lg-12">
                 <div class="mb-4 text-end">
                     <a href="<?php echo base_url() ?>/admin/floor_add" class="btn btn-primary btn-rounded waves-effect waves-light"><i class=" ri-menu-add-line me-1"></i> <?php echo lang('Floor.floo_add'); ?></a>
                 </div>
                 <div class="card">
                     <div class="card-body ">
                         <h4 class="card-title mb-4"> <?php echo lang('Floor.floor_list'); ?></h4>

                         <table id="datatable" class="table table-bordered dt-responsive nowrap text-center" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                             <thead>
                                 <tr>
                                     <th scope="col"><?php echo lang('Floor.floo_no'); ?></th>
                                     <th scope="col"><?php echo lang('Floor.floo_action'); ?></th>
                                 </tr>
                             </thead>
                             <tbody>
                                 <?php foreach ($getFloors as $floors) : ?>
                                     <tr>
                                         <td><?= $floors['floorno']; ?></td>
                                         <td>
                                             <?php 
                                             if($edit){ 
                                             ?>
                                             <a href="<?= base_url() ?>/admin/floor_edit/<?= $floors['id']; ?>" class="btn btn-outline-success btn-sm"><?php echo lang('Floor.floo_edit'); ?></a>
                                             <?php }?>
                                             <?php 
                                             if($delete){ 
                                             ?>
                                             <a href="<?= base_url() ?>/admin/floor_delete/<?= $floors['id']; ?>" class="btn btn-outline-danger btn-sm"><?php echo lang('Floor.floo_delete'); ?></a>
                                             <?php }?>
                                         </td>
                                     </tr>
                                 <?php endforeach; ?>

                             </tbody>
                         </table>

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
 <?= $this->endSection() ?>