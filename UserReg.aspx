<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="Library.Member.UserReg" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Library Management System</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <h4 style="color:white">SIGN UP</h4>
                </div>
                <div class="login-form">
                    <form id="f1" runat="server">

                        <div class="alert alert-success" id="bsaved" runat="server" style="margin-top:10px; display:none">
                             <strong>Success!</strong> Sign up Successfully.
                        </div>

                        <div class="form-group">
                                                        
                            <asp:TextBox ID="fname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                          
                           <asp:TextBox ID="lname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="address" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                            <asp:Label ID="lblemail" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        
                        <div class="form-group">
                            <asp:TextBox ID="contact" runat="server" class="form-control" placeholder="Contact" ></asp:TextBox>
                            <asp:Label ID="ercontact" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        
                        <div class="form-group">
                            <asp:TextBox ID="pass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="cpass" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="erpass" runat="server" ForeColor="Red"></asp:Label>
                        </div>

                        <div class="form-group">
                             <label for="cc-payment" class="control-label mb-1">Image</label>
                               
                             <asp:FileUpload ID="mImage" runat="server"  class="form-control" />
                        </div>

                        <asp:Button ID="btnReg" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Sign up" OnClick="btnReg_Click1" />
                        
                        <div class="register-link m-t-15 text-center">
                            <p>Already have account ? <a href="MemberLogin.aspx"> Sign in</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>

