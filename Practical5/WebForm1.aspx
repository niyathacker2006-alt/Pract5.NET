<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical5.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
            text-align: center;
            margin-top: 100px;
        }
        form {
            background-color: white;
            width: 400px;
            margin: auto;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        h1 {
            color: #333;
            margin-bottom: 30px;
        }
        label {
            font-size: 16px;
            color: #555;
        }
        input[type=text],
        input[type=password] {
            width: 90%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }
        input[type=submit] {
            padding: 10px 30px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Student Login</h1>
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <br />
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <br />
        <asp:TextBox ID="txtPassword" runat="server"
            TextMode="Password"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnLogin" runat="server"
            Text="Login"
            OnClick="btnLogin_Click" />
        <br /><br />
        <asp:Label ID="lblMessage" runat="server"
            ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
