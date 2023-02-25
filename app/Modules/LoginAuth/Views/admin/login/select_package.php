<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Package select | RS Property</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="<?php echo base_url() ?>/admin/assets/images/favicon.ico">
    <link href="<?php echo base_url() ?>/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Css -->
    <link href="<?php echo base_url() ?>/admin/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="<?php echo base_url() ?>/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="<?php echo base_url() ?>/admin/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

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
</head>

<body>
    
<div class="demo">
    <div class="container">
    <br>
    <h1 style="text-align: center;color: #0bb197;margin-bottom: 10px;">Choose a Package</h1>
    <br>
        <div class="row">
            <?php $p=1; foreach($packages as $pakage){ ?>

            
            <div class="col-md-4 col-sm-6" style="padding: 0% 6% 0% 6%;">
                <div class="pricingTable">
                    <div class="pricingTable-header">
                        <h3 class="title"><?=$pakage['pakage_title'];?></h3>
                        <div class="price-value">
                            <span class="amount">$<?=$pakage['cost'];?>.00</span>
                            <span class="duration">For 
                                <?php 
                                if($pakage['duration'] != 'other'){
                                    if($pakage['duration']>=12){
                                       $duration= $pakage['duration']/12;
                                       echo $duration." Years";
                                    }else{
                                        echo $pakage['duration']." Months";
                                    }
                                   
                                }else{
                                    if($pakage['d_m_y']==1){
                                      $d_m_y = "Days";

                                    }else if($pakage['d_m_y']==2){
                                        $d_m_y = "Months";

                                    }else if($pakage['d_m_y']==3){
                                        $d_m_y = "Years";

                                    }

                                    echo $pakage['how_many']." ".$d_m_y;
                                }
                                ?></span>
                        </div>
                    </div>
                    <ul class="pricing-content">
                        <li>Property Limit : <?=$pakage['property_limit']?></li>
                        <li>Employee Limit : <?=$pakage['employee_limit']?></li>
                        <!-- <li>50GB Bandwidth</li> -->
                        <!-- <li class="disable">Maintenance</li>
                        <li class="disable">15 Subdomains</li> -->
                    </ul>
                    <div class="pricingTable-signup">
                        <form action="<?=base_url('admin/payment/'.$pakage['id']);?>" method="post">
                       
                            
                            <input type="hidden" name="owner_id" value="<?=$user_id?>">

                   
                        
                        <button type="submit">Use</button>
                        </form>
                        
                    </div>
                </div>
            </div>

            <?php
            if($p % 3 == 0 ){
              echo "<hr style='color:#f3f3f4'><hr style='color:#f3f3f4'><hr style='color:#f3f3f4'>";
            }
            ?>

            <?php $p++; }?>

        </div>
    </div>
</div>  

    <!-- JAVASCRIPT -->
    <script src="<?php echo base_url() ?>/admin/assets/libs/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url() ?>/admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo base_url() ?>/admin/assets/libs/metismenu/metisMenu.min.js"></script>
    <script src="<?php echo base_url() ?>/admin/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="<?php echo base_url() ?>/admin/assets/libs/node-waves/waves.min.js"></script>

    <script src="<?php echo base_url() ?>/admin/assets/js/app.js"></script>

</body>

</html>