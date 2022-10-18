<%@ Page Title="Login" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/UserMaster/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Pizza.UserMaster.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />

    <center>
        <table>
            <tr> 
                <td colspan="2" align="center" style="background-color: #FF00FF"><h2 style="height: 37px"><b> Login </b></h2></td>
            </tr>
            <tr>
                <td style="background-color: #FF00FF; width: 220px;"> Select Account </td>
                <td><asp:DropDownList ID="DropDownListLogin" runat="server" BackColor="#FF00FF" CssClass="offset-sm-0" Width="139px">
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList> 
                </td>
            </tr>
            <tr>
                <td style="background-color: #FF00FF; width: 220px;"> UserName </td>
                <td><asp:TextBox ID="Txtname" runat="server" BackColor="#FF00FF"></asp:TextBox> </td>
            </tr>

            <tr>
                <td style="background-color: #FF00FF; width: 220px;"> Password </td>
                <td><asp:TextBox ID="txtpass" runat="server" BackColor="#FF00FF"></asp:TextBox> </td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="background-color: #FF00FF"> <asp:Button ID="Button1" runat="server" Text="Login" BorderColor="#CC0000" OnClick="Button1_Click1"></asp:Button></td>
            </tr>
        </table>
    </center>

    <br />
    <br />
    <br />
    <br />
</asp:Content>
