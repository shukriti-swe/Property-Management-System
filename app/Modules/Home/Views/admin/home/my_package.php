<?= $this->extend('\Modules\Master\Views\master') ?>
 <?= $this->section('content') ?>
 <style>
        .pricingTable{
            color: #30b868;
            background: #0bb197;
            font-family: 'Outfit', sans-serif;
            text-align: center;
            padding: 0 0 10px;
            border-radius: 30px;
            position: relative;
            z-index: 1;
        }
        .pricingTable:after{
            content: "";
            background: #ffffff;
            width: 100%;
            height: 50%;
            border-radius: 30px;
            position: absolute;
            bottom: 0;
            left: 0;
            z-index: -1;
        }
        .pricingTable .title{
            background: #fff;
            font-size: 14px;
            font-weight: 600;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            width: 80%;
            padding: 5px 5px;
            margin: 0 auto 5px;
            border-radius: 0 0 20px 20px;
            display: inline-block;
            color: #0bb197;
        }
        .pricingTable .price-value{
            color: #fff;
            display: inline-block; 
        }
        .pricingTable .price-value .amount{
            font-size: 40px;
            font-weight: 500;
            line-height: 40px;
            display: block;
        }
        .pricingTable .price-value .duration{
            text-align: right;
            text-transform: uppercase;
            display: block;
        }
        .pricingTable .pricing-content{
            background: #fff;
            width: calc(100% - 15px);
            padding: 40px 0 20px 30px;
            margin: 0 0 20px;
            list-style: none;
            border-radius: 0 25px 25px;
            position: relative;
        }
        .pricingTable .pricing-content:before{
            content: "";
            background: #11a18a;
            width: 100%;
            height: 20px;
            border-radius: 0 0 0 30px;
            position: absolute;
            top: 0;
            left: 0;
        }
        .pricingTable .pricing-content li{
            color: #7b7b7b;
            /* font-weight: bolder; */
            font-size: 14px;
            line-height: 20px;
            text-align: left;
            /* text-transform: uppercase; */
            padding: 0 0 0 30px;
            margin: 0 0 1px;
            position: relative;
        }
        .pricingTable .pricing-content li:last-child{ margin: 0; }
        .pricingTable .pricing-content li:before{
            content: "\f00c";
            color: #0bb197;
            font-size: 18px;
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            position: absolute;
            top: 0;
            left: 0;
        }
        .pricingTable .pricing-content li.disable:before{
            content: "\f00d";
            color: #d63031;
        }
        .pricingTable .pricingTable-signup button{
            color: #fff;
            background: #0bb197;
            font-size: 14px;
            font-weight: 600;
            line-height: 25px;
            text-transform: uppercase;
            padding: 4px 25px;
            border-radius: 10px;
            border: 3px solid transparent;
            transition: all 0.3s;
        }
        .pricingTable .pricingTable-signup button:hover{ border-color: #fff; }
        .pricingTable.green{
            color: #30b868;
            background-color: #30b868;
        }
        .pricingTable.green .pricing-content:before,
        .pricingTable.green .pricingTable-signup button{
            background-color: #30b868;
        }
        .pricingTable.green .pricing-content li:before{ color: #30b868; }
        .pricingTable.orange{
            color: #f38330;
            background-color: #f38330;
        }
        .pricingTable.orange .pricing-content:before,
        .pricingTable.orange .pricingTable-signup button{
            background-color: #f38330;
        }
        .pricingTable.orange .pricing-content li:before{ color: #f38330; }
        .pricingTable .pricing-content li.disable:before{ color: #d63031; }
        @media only screen and (max-width: 990px){
            .pricingTable{ margin: 0 0 40px; }
        }
    </style>
<div class="page-content">
  <div class="container-fluid">

    <div class="card">
      <div class="card-body"style="padding: 0px;background-color:#f3f3f4;">
        <div class="simplebar-content" style="padding: 0px;">
                
        </div>
            <div class="dt-responsive nowrap" style="padding: 0px;background-color:#f3f3f4;">
                <h1 class="card-title" style="text-align:center">My Package</h1>
                <div class="row mt-4 justify-content-center" > 
                <div class="col-md-4 col-sm-6" style="padding: 0% 6% 0% 6%;">
                <div class="pricingTable">
                    <div class="pricingTable-header">
                        <h3 class="title"><?=$package[0]->pakage_title;?></h3>
                        <div class="price-value">
                            <span class="amount">$<?=$package[0]->cost;?>.00</span>
                            <span class="duration">For 
                                <?php 
                                if($package[0]->duration != 'other'){
                                    if($package[0]->duration >=12){
                                       $duration= $package[0]->duration/12;
                                       echo $duration." Years";
                                    }else{
                                        echo $package[0]->duration." Months";
                                    }
                                   
                                }else{
                                    if($package[0]->d_m_y==1){
                                      $d_m_y = "Days";

                                    }else if($package[0]->d_m_y==2){
                                        $d_m_y = "Months";

                                    }else if($package[0]->d_m_y==3){
                                        $d_m_y = "Years";

                                    }

                                    echo $package[0]->how_many." ".$d_m_y;
                                }
                                ?></span>
                        </div>
                    </div>
                    <ul class="pricing-content">
                        <li>Property Limit : <?=$package[0]->property_limit?></li>
                        <li>Employee Limit : <?=$package[0]->employee_limit?></li>
                        <!-- <li>50GB Bandwidth</li> -->
                        <!-- <li class="disable">Maintenance</li>
                        <li class="disable">15 Subdomains</li> -->
                    </ul>

                    <a class="btn btn-outline-primary mb-3 btn-sm" href="<?= base_url('admin/edit_package') ?>">Edit Package</a>
                    
                </div>
            </div>
            </div>
            </div>
        </div>
      </div>
    </div>
</div>
<script>
    $(document).on("click",".viewed_notification",function () {
   
    });
</script>

 <?= $this->endSection() ?>