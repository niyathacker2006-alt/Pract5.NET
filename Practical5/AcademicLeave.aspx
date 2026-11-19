<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AcademicLeave.aspx.cs"
    Inherits="Practical5.AcademicLeave" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar and Leave Management</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
            margin: 0;
            padding: 40px;
        }
        form {
            background-color: white;
            width: 750px;
            margin: auto;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        h2 {
            color: #333;
            margin-top: 25px;
        }
        #lblUser {
            display: block;
            text-align: center;
            color: #555;
            font-size: 16px;
            margin-bottom: 20px;
        }
        hr {
            border: 0;
            border-top: 1px solid #ddd;
            margin: 25px 0;
        }
        #Calendar1 {
            margin: 15px auto;
        }
        select,
        input[type=text],
        input[type=number],
        textarea {
            padding: 9px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
            margin-top: 5px;
        }
        input[type=number] {
            width: 100px;
        }
        textarea {
            resize: none;
        }
        input[type=submit] {
            padding: 10px 20px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 15px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #0056b3;
        }
        #lblSelectedDate {
            color: #555;
        }
        #lblMessage {
            color: green;
            font-weight: bold;
        }
        #GridView1 {
            width: 100%;
            margin-top: 15px;
            border-collapse: collapse;
        }
        #GridView1 th {
            background-color: #007bff;
            color: white;
            padding: 10px;
        }
        #GridView1 td {
            padding: 10px;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <h1>Academic Calendar and Leave Management System</h1>
    <asp:Label ID="lblUser" runat="server"></asp:Label>
    <hr />
    <h2>Academic Calendar</h2>
    <asp:Calendar ID="Calendar1"
        runat="server"
        OnSelectionChanged="Calendar1_SelectionChanged">
    </asp:Calendar>
    <br />
    <asp:Label ID="lblSelectedDate"
        runat="server"
        Text="Select a date from the calendar.">
    </asp:Label>
    <hr />
    <h2>Apply for Leave</h2>
    <asp:Label ID="Label1"
        runat="server"
        Text="Leave Type:">
    </asp:Label>
    <br />
    <asp:DropDownList ID="ddlLeaveType" runat="server">
        <asp:ListItem Text="Select Leave Type" Value=""></asp:ListItem>
        <asp:ListItem Text="Medical Leave" Value="Medical Leave"></asp:ListItem>
        <asp:ListItem Text="Personal Leave" Value="Personal Leave"></asp:ListItem>
        <asp:ListItem Text="Emergency Leave" Value="Emergency Leave"></asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:Label ID="Label2"
        runat="server"
        Text="Number of Days:">
    </asp:Label>
    <br />
    <asp:TextBox ID="txtDays"
        runat="server"
        TextMode="Number">
    </asp:TextBox>
    <br /><br />
    <asp:Label ID="Label3"
        runat="server"
        Text="Reason:">
    </asp:Label>
    <br />
    <asp:TextBox ID="txtReason"
        runat="server"
        TextMode="MultiLine"
        Rows="4"
        Columns="30">
    </asp:TextBox>
    <br /><br />
    <asp:Label ID="Label4"
        runat="server"
        Text="Attendance Type:">
    </asp:Label>
    <br />
    <asp:RadioButtonList ID="rblType" runat="server">
        <asp:ListItem Text="Full Day" Value="Full Day"></asp:ListItem>
        <asp:ListItem Text="Half Day" Value="Half Day"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Button ID="btnApply"
        runat="server"
        Text="Apply Leave"
        OnClick="btnApply_Click" />
    <br /><br />
    <asp:Label ID="lblMessage"
        runat="server">
    </asp:Label>
    <hr />
    <h2>Leave Applications</h2>
    <asp:GridView ID="GridView1"
        runat="server"
        AutoGenerateColumns="true">
    </asp:GridView>
    <br />
    <asp:Button ID="btnBack"
        runat="server"
        Text="Back to Welcome"
        OnClick="btnBack_Click" />
</form>
</body>
</html>
