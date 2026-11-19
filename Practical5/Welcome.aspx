<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Welcome.aspx.cs"
    Inherits="Practical5.Welcome" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
            text-align: center;
            margin-top: 100px;
        }
        form {
            background-color: white;
            width: 500px;
            margin: auto;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        h1 {
            color: #333;
        }
        #lblWelcome {
            font-size: 20px;
            color: #555;
        }
        input[type=submit] {
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome to Academic Portal</h1>
        <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <br /><br />
        <asp:Button ID="btnAcademic"
            runat="server"
            Text="Academic Calendar & Leave Management"
            OnClick="btnAcademic_Click" />
        <br /><br />
        <asp:Button ID="btnLogout"
            runat="server"
            Text="Logout"
            OnClick="btnLogout_Click" />
    </form>
</body>
</html>
