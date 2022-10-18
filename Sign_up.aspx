<%@ Page Title="Sign_up" Language="C#" MasterPageFile="~/UserMaster/User.Master" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="Online_Pizza.UserMaster.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />
    <br />
    <br />
    <br />
    <center>

        <table>
            <tr>
                <td colspan="2" style="border: thick solid #C0C0C0; background-color: #FF00FF;" align="center"> <h2>Sign-up</h2></td>
            </tr>
            <tr>
                <td style="background-color: #FF00FF; border: thick solid #C0C0C0"> First Name </td>
                <td style="background-color: #FF00FF; border: thin solid #0000FF; width: 500px;"> <asp:TextBox ID="txt1" placeholder="Enter FirstName" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID= "RequiredFieldValidator1" runat="server" ControlToValidate="txt1"
                            ErrorMessage="     Required!" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <tr>
                <td style="background-color: #FF00FF; border: thick solid #C0C0C0"> Last Name </td>
                <td style="background-color: #FF00FF; border: thin solid #0000FF; width: 500px;"> <asp:TextBox ID="txt2" placeholder="Enter LastName" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID= "RequiredFieldValidator2" runat="server" ControlToValidate="txt2"
                            ErrorMessage="Required!" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <tr>
                <td style="background-color: #FF00FF; border: thick solid #C0C0C0"> Gender </td>
                <td style="background-color: #FF00FF; border: thin solid #0000FF; width: 500px;"><asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem> Male </asp:ListItem>
                    <asp:ListItem> Female</asp:ListItem>
                    <asp:ListItem> Other </asp:ListItem>
                    </asp:RadioButtonList> 
                    <asp:RequiredFieldValidator ID= "RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1"
                            ErrorMessage="Required!" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td> 
            </tr>

            <tr> 
                <td style="background-color: #FF00FF; border: thick solid #C0C0C0"> User Name </td>
                <td style="background-color: #FF00FF; border: thin solid #0000FF; width: 500px;"> <asp:TextBox ID="txt3" placeholder="Enter Username" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID= "RequiredFieldValidator4" runat="server" ControlToValidate="txt3"
                            ErrorMessage="Required!" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <%-- <tr> 
                <td style="background-color: #FF00FF; border: thick solid #C0C0C0"> Education </td>
                <td style="background-color: #FF00FF; border: thin solid #0000FF"> <asp:TextBox ID="txt4" placeholder="Enter Education" runat="server"></asp:TextBox> </td>
            </tr>--%>

            <tr> 
                <td style="background-color: #FF00FF; border: thick solid #C0C0C0"> Password </td>
                <td style="background-color: #FF00FF; border: thin solid #0000FF; width: 500px;"> <asp:TextBox ID="txt5" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID= "RequiredFieldValidator5" runat="server" ControlToValidate="txt5"
                            ErrorMessage="Required!" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr> 
                <td style="background-color: #FF00FF; border: thick solid #C0C0C0"> Confirm Password </td>
                <td style="background-color: #FF00FF; border: thin solid #0000FF; width: 500px;"> <asp:TextBox ID="txt6" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID= "RequiredFieldValidator6" runat="server" ControlToValidate="txt6"
                            ErrorMessage="Required!" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2"  align="center" style="border: thick solid #C0C0C0; background-color: #FF00FF;"> <asp:Button ID="Button1" runat="server" Text="Sign_up" BackColor="#3333FF" ForeColor="White" OnClick="Button1_Click"></asp:Button> </td>
            </tr>
        </table>
    </center>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
