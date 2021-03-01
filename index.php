<!DOCTYPE>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/1.png">
    <title>|Online Examination System|</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="css/main.css" type="text/css">


    <link rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>

    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <?php
    if (@$_GET['w']) {
        echo '<script>alert("' . @$_GET['w'] . '");</script>';
    }
    ?>
    <script>
        // validation for signup page

        function validateForm() {
            var y = document.forms["form"]["name"].value;
            var letters = /^[A-Za-z]+$/;
            if (y == null || y == "") {
                alert("Name must be filled out.");
                return false;
            }
            var z = document.forms["form"]["college"].value;
            if (z == null || z == "") {
                alert("college must be filled out.");
                return false;
            }
            var x = document.forms["form"]["email"].value;
            var atpos = x.indexOf("@");
            var dotpos = x.lastIndexOf(".");
            if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
                alert("Not a valid e-mail address.");
                return false;
            }
            var a = document.forms["form"]["password"].value;
            if (a == null || a == "") {
                alert("Password must be filled out");
                return false;
            }
            if (a.length < 5 || a.length > 25) {
                alert("Passwords must be 5 to 25 characters long.");
                return false;
            }
            var b = document.forms["form"]["cpassword"].value;
            if (a != b) {
                alert("Passwords must match.");
                return false;
            }
        }
    </script>
    <style>
        *,
        *::after,
        *::before {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        ul {
            margin: 10px 0 0 0px;
            < !-- display: inline-block;
            -->list-style: none;
            background: black;
            position: relative;
        }

        ul::after {
            content: '';
            position: absolute;
            display: block;
            width: 100%;
            height: 5px;
            background: rgb(21, 116, 179);
        }

        ul:hover::after {
            z-index: 2;
        }

        li {
            position: relative;
            display: inline-block;
            padding: 20px 40px;
            transition: 300ms box-shadow ease-in-out;
        }

        li:hover {
            z-index: 2;
            border-radius: 40px;
            background: rgb(21, 116, 179);
            box-shadow: 10px 18px 18px rgba(0, 0, 0, 0.253);
        }

        li a {
            text-decoration: none;
            font-family: lato, sans-serif;
            color: whitesmoke;
        }
    </style>
</head>

<body>


    <div class="header">

        <div class="col-lg-15 ">
            <span class="logo">
                <center>~WebXam~
                </center>
            </span>
        </div>
    </div>
    <!--header row closed-->
    <div class="bg1">
        <div class="footer">
            <center>
                <ul>
                    <li><a href="demo.html" target="_blank">About us</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#login">Admin Login</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#developers">Developers</a></li>
                    <li><a href="feedback.php" target="_blank">Feedback</a></li>
                </ul>
            </center>
        </div>

        <div class="login-wrap">
            <!-- /// -->
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign
                    In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                <div class="login-form">
                    <form class="sign-in-htm" action="login.php?q=index.php" method="POST">
                        <DIV class="bg5">

                        </DIV>
                        <div class="group">
                            <label class="label" for="email"></label>
                            <input id="email" name="email" placeholder="Enter your email-id" class="input" type="email">
                        </div>
                        <div class="group">
                            <label class="label" for="password"></label>
                            <input id="password" name="password" placeholder="Enter your Password" class="input" type="password">
                            <div class="abcd"></div>
                        </div>
                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked>
                            <label for="check"><span class="icon"></span> Keep me Signed in</label>
                        </div>
                        <div class="group">
                            <input type="submit" class="button" value="Sign In">
                        </div>
                        <div class="hr"></div>

                    </form>

                    <form class="sign-up-htm" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" method="POST">
                        <div class="group">
                            <label for="user" class="label"></label>
                            <input id="name" name="name" placeholder="Enter your name" class="input" type="text">
                        </div>
                        <!-- Text input-->
                        <div class="group">
                            <label class="label" for="gender"></label>

                            <select id="gender" name="gender" placeholder="Enter your gender" class="input">
                                <option value="Male">Select Gender</option>
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                            </select>

                        </div><!-- text input closed-->

                        <!-- Text input-->
                        <div class="group">
                            <label class="label" for="name"></label>

                            <input id="college" name="college" placeholder="Enter your college name" class="input" type="text">

                        </div><!-- text input closed-->

                        <!-- Text input-->
                        <div class="group">
                            <label class="label" for="email"></label>

                            <input id="email" name="email" placeholder="Enter your email-id" class="input" type="email">

                        </div><!-- text input closed-->

                        <!-- Text input-->
                        <div class="group">
                            <label class="label" for="mob"></label>

                            <input id="mob" name="mob" placeholder="Enter your mobile number" class="input" type="number">

                        </div><!-- text input closed-->

                        <!-- Text input-->
                        <div class="group">
                            <label class="label" for="password"></label>

                            <input id="password" name="password" placeholder="Enter your password" class="input" type="password">

                        </div><!-- text input closed-->

                        <div class="group">
                            <label class="label" for="cpassword"></label>

                            <input id="cpassword" name="cpassword" placeholder="Conform Password" class="input" type="password">

                        </div><!-- form -group closed-->

                        <?php
                        if (@$_GET['q7']) {
                            echo '<p style="color:red;font-size:15px;">' . @$_GET['q7'];
                        }
                        ?>
                        <div class="group">
                            <input type="submit" class="button" value="Sign Up">
                        </div>

                        <div class="foot-lnk">
                            <label for="tab-1">Already Member?</a>
                        </div>

                    </form>
                </div>
            </div>
        </div>

        <!-- ///// -->

        <!-- Modal For Developers-->
        <div class="modal fade title1" id="developers">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <h4 class="modal-title" style="font-family:'typo' "><span style="color:orange">Developers</span>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="image/nishant.png" width=100 height=100 alt="Rebel " class="img-rounded">
                                </div>
                                <div class="col-md-5">
                                    <h4 style="font-family:'typo' ">Nishant Ahire</h4>
                                    <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+91 8793672653
                                    </h4>
                                    <h4 style="font-family:'typo' ">nishant.ahire8720@gmail.com</h4>
                                </div>
                                <br>

                            </div>
                        </p>
                        <p>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="image/rutuja.png" width=100 height=100 alt="Rebel " class="img-rounded">
                                </div>
                                <div class="col-md-5">
                                    <h4 style="font-family:'typo' ">Rutuja Borkar</h4>
                                    <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+91 8805384652
                                    </h4>
                                    <h4 style="font-family:'typo' ">rutuborkar5334@gmail.com</h4>
                                </div>
                                <br>
                            </div>
                        </p>
                        <p>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="image/mauli.png" width=100 height=100 alt="Rebel " class="img-rounded">
                                </div>
                                <div class="col-md-5">
                                    <h4 style="font-family:'typo' ">Dnyaneshwar Ganlewar</h4>
                                    <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+91 8975581552
                                    </h4>
                                    <h4 style="font-family:'typo' ">dganlewar@gmail.com</h4>
                                </div>
                                <br>
                            </div>
                        </p>
                        <p>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="image/pratiksha.png" width=100 height=100 alt="Rebel " class="img-rounded">
                                </div>
                                <div class="col-md-5">
                                    <h4 style="font-family:'typo' ">Pratiksha Kale </h4>
                                    <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+91 9689210650
                                    </h4>
                                    <h4 style="font-family:'typo' ">kalepratiksha888@gmail.com</h4>
                                </div>
                                <br>
                            </div>
                        </p>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <!--Modal for admin login-->
        <div class="modal fade" id="login">

            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="bg6">
                        <div class="modal-header">

                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true">&times;</span>
                                <span class="sr-only">Close</span>
                            </button>
                            <center>
                                <h4 class="modal-title"><span style="color:orange;font-family:'typo' "> Admin
                                        Login</span>
                                </h4>
                            </center>
                        </div>

                        <div class="modal-body title1">
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">

                                    <form role="form" method="post" action="admin.php?q=index.php">
                                        <div class="bg7">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="uname" maxlength="30" placeholder="Admin user id" class="form-control " />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" maxlength="15" placeholder="Password" class="form-control" />
                                        </div>
                                        <div class="form-group" align="center">
                                            <input type="submit" name="login" value="Login" class="btn btn-primary" />
                                        </div>
                                    </form>

                                </div>
                                <div class="col-md-3"></div>
                            </div>
                        </div>
                    </div>
                    <!--<div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>-->

                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <!--footer end-->
    </div>
</body>

</html>