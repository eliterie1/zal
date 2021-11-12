<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="<?php echo base_url(); ?>assets/images/favicon.png" />
        <title><?php echo settings()[0]->name; ?> | <?php echo settings()[0]->slogan; ?></title>
        <link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/css/main.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/css/custom.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Rubik:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!--[if lt IE 9]>
            <script src="../assets/js/ie8-responsive-file-warning.js"></script>
            <![endif]-->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->

    </head>
    <body style="background:#F7F7F7;">
        <div class="container">

            <div class="col-md-12 mediumSpaceTop">
                <h1 class="text-center" ><img width="50px" src="<?php echo base_url(); ?>assets/images/final/<?php echo logo(); ?>" alt="Logo"><br><br> <?php echo settings()[0]->name; ?> | <?php echo settings()[0]->slogan; ?></h1>
            </div>

            <div class="col-md-6 col-md-offset-3 mediumSpaceTop">
                <form class="form-horizontal form-label-left" role="form" enctype="multipart/form-data" method="post" action="<?php echo base_url(); ?>login/checkinguser" accept-charset="utf-8">
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Email <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input class="form-control col-md-7 col-xs-12" name="email" type="email" placeholder="Enter Email" required>
                        </div>
                    </div>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Password <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input class="form-control col-md-7 col-xs-12" name="password" type="password" placeholder="Enter Password" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                            <button id="send" type="Save Now!" class="btn btn-success"><i class="fa fa-lock"></i> Login Now</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-12 mediumSpaceTop mediumSpaceBtm">
                <p class="text-center" ><?php echo settings()[0]->name; ?> | <?php echo settings()[0]->slogan; ?> | <?php echo settings()[0]->copyright; ?></p>
            </div>

        </div>
    </body>
</html>
