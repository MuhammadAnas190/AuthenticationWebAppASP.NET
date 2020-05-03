<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AuthenticationWebAppASP.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- Navigation bar -->
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">Navbar</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Features</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Pricing</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </header>

    <form runat="server" id="login">
        <section class="container my-5">
            <div class="row justify-content-center align-items-center text-center">
                <div class="col-12 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h1>
                                <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label></h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

    <footer class="container-fluid">
        <div class="row">
            <div class="col-12">
                <p class="text-center">© Copyright <%: DateTime.Now.Year %>. All rights reserved. </p>
            </div>
        </div>
    </footer>
    <script src="js/jquery.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
