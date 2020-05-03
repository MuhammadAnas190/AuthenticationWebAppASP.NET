<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AuthenticationWebAppASP.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <header class="container-fluid">
        <div class="row">
            <div class="col-12">
            </div>
        </div>
    </header>

    <form runat="server" id="login">
        <section class="container my-5">
            <div class="row justify-content-center align-items-center text-center">
                <div class="col-12 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h1>Login</h1>
                        </div>
                        <div class="card-body">
                            <asp:TextBox ID="nameL" runat="server" MaxLength="50" placeholder="Enter Username..." CssClass="form-control" ToolTip="Enter Username"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="passL" runat="server" MaxLength="50" placeholder="Enter Password..." CssClass="form-control" ToolTip="Enter Password" TextMode="Password"></asp:TextBox>
                            <br />
                            <asp:Button ID="loginBtn" runat="server" Text="Sign In" CssClass="btn btn-success" OnClick="loginBtn_Click" />
                            <asp:Button ID="register" runat="server" Text="Sign Up" CssClass="btn btn-default" OnClick="register_Click"/>
                            <div class="w-100 my-4">
                                <asp:Label ID="errShow" CssClass="text-center text-danger" runat="server" Text=""></asp:Label>
                            </div>
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
