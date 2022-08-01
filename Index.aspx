<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Index" %>

<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />

        <title>Library Management System</title>
        <meta name="description" content="This is my first fully responsive website" />

        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="style.css" />

        <script src="vendor/jquery-2.2.4.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <!--[if lt IE 9]>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
        <![endif]-->
    </head>

    <body>

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h1>Library Management System <small>v 1.0.0</small></h1>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="Index.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a></li>
                                    <li><a href="UserLogin.aspx"><i class="fa fa-user" aria-hidden="true"></i> User Login</a></li>
                                    <li><a href="UserReg.aspx"><i class="fa fa-user-plus" aria-hidden="true"></i> User Sign Up</a></li>
                                    

                            </div><!-- /.navbar-collapse -->
                        </div><!-- /.container-fluid -->
                    </nav>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="3" ></li>
                            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="6" ></li>
                            <li data-target="#carousel-example-generic" data-slide-to="7"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="8"></li>

                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="images/Library.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                                 <div class="item">
                                <img src="images/slider8.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                               <div class="item">
                                <img src="images/slider7.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/slider3.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/slider4.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                             
                            <div class="item">
                                <img src="images/Slider5.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/slider6.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                         
                         
                            <div class="item">
                                <img src="images/slider9.jpg" alt="Library"/>
                                <div class="carousel-caption">
                                    
                                </div>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>

            

    </body>
</html>