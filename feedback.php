<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Project Worlds || FEEDBACK </title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>

    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <!--alert message-->
    <?php if (@$_GET['w']) {
        echo '<script>alert("' . @$_GET['w'] . '");</script>';
    }
    ?>
    <!--alert message end-->

</head>

<body class="bg1">

    <!--header start-->
    <div class="row header">
        <div class="col-lg-6">
            <span class="logo">~WebXam~</span></div>
        <div class="col-md-2">
        </div>


        <div class="col-md-4">
            <?php
            include_once 'dbConnection.php';
            session_start();
            if ((!isset($_SESSION['email']))) {
                echo '<a href="#" class="pull-right sub1 btn title3" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;Signin</a>&nbsp;';
            } else {
                echo '<a href="logout.php?q=feedback.php" class="pull-right sub1 btn title3"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Signout</a>&nbsp;';
            }
            ?>

            <a href="index.php" class="pull-right btn sub1 title3"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home</a>&nbsp;
        </div>
    </div>

    <!--sign in modal closed-->

    <!--header end-->

    <div class="bg1">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6 panel" style="background-image:url(image/result.jpg);background-size: cover; min-height:430px;">
                <h2 align="center" style="font-family:'typo'; color:#000066">FEEDBACK/REPORT A PROBLEM</h2>
                <div style="font-size:14px">
                    <?php
                    if (@$_GET['q'])
                        echo '<span style="font-size:18px;"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;' . @$_GET['q'] . '</span>';
                    else {
                        echo ' <div class="col-md-2"></div>
  <h4>You can send us your feedback through e-mail : <br>
  <a href="mailto:nishant.ahire8720@gmail.com" style="color:#000000">nishant.ahire8720@gmail.com</a><br /><br /></h4>
  <div class="col-md-1"></div>
  <p>Or you can directly submit your feedback by filling the enteries below:-</p>
  <form role="form"  method="post" action="feed.php?q=feedback.php">
  <div class="row">
  <div class="col-md-6"><b>Name :</b><br /><br /><br /><b>Subject:</b></div>
  <div class="col-md-5">
  <!-- Text input-->
  <div class="form-group">
    <input id="name" name="name" placeholder="Enter your name" class="form-control input-md" type="text"><br />    
    <input id="name" name="subject" placeholder="Enter subject" class="form-control input-md" type="text">    

  </div>
  </div>
  </div><!--End of row-->

  <div class="row">
  <div class="col-md-6"><b>E-Mail address:</b></div>
  <div class="col-md-5">
  <!-- Text input-->
  <div class="form-group">
    <input id="email" name="email" placeholder="Enter your email-id" class="form-control input-md" type="email">    
  </div>
  </div>
  </div><!--End of row-->

  <div class="form-group"> 
  <textarea rows="5" cols="5" name="feedback" class="form-control" placeholder="Write feedback here..."></textarea>
  </div>
  <div class="form-group" align="center">
  <center><a href="index.php" class="pull-right btn sub1 title3"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Go Back!</a>&nbsp;</center>
  <input type="submit" name="submit" value="Submit" class="btn btn-primary" />
  </div>
  </form>';
                    }
                    ?>
                </div>
                <!--col-md-6 end-->

            </div>
        </div>
    </div>
    <!--container end-->
</body>

</html>