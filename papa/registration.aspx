<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="papa.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            height: 23px;
            width: 123px;
        }
        .auto-style5 {
            width: 392px;
        }
        .auto-style6 {
            height: 23px;
            width: 392px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Registration"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
&nbsp;:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_firstname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
&nbsp;:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_lastname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Middle Name&nbsp; :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_middlename" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">student number :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_studentnum" runat="server"></asp:TextBox>
                </td>
                 <td class="auto-style3">Usename&nbsp; :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                </td>
                 <td class="auto-style3">Password&nbsp; :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
