<%@ Page Title="MyOrder" Language="C#" MasterPageFile="~/UserMaster/User.Master" AutoEventWireup="true" CodeBehind="MyOrder.aspx.cs" Inherits="Online_Pizza.UserMaster.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<h1>
    My Orders
</h1>

    <br />
    <br />
    <br />
    <br />
        <center>
            <table style="margin-right: 94px">
                <tr>
                    <td colspan="2" align="center"> Order Form</td>
                </tr>
                <tr>
                    <td>OrderId </td>
                    <td style="width: 406px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>

                </tr>

                <tr>
                    <td> Order Name </td>
                    <td style="width: 406px"><asp:TextBox ID="txtname" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID= "name" runat="server" ControlToValidate="txtname"
                            ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td> Quantity </td>
                    <td style="width: 406px"><asp:DropDownList ID="DropDownList2" runat="server" Width="104px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList> </td>
                </tr>

                <tr>
                    <td> Pizza Category </td>
                    <td style="width: 406px"><asp:DropDownList ID="DropDownList1" runat="server" Width="164px">
                        <asp:ListItem>Regular</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Large</asp:ListItem>
                        </asp:DropDownList> </td>
                </tr>

                <tr>
                    <td> OrderDate </td>
                    <td style="width: 406px"><asp:TextBox ID="txtorder" runat="server" TextMode="Date" OnTextChanged="txtorder_TextChanged"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID= "RequiredFieldValidator1" runat="server" ControlToValidate="txtorder"
                            ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td> Your Name </td>
                    <td style="width: 406px"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID= "RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td> Address </td>
                    <td style="width: 406px"><asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Height="95px" style="margin-bottom: 15" Width="354px"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID= "RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress"
                            ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td> Phone </td>
                    <td style="width: 406px"><asp:TextBox ID="txtphone" runat="server" Height="35px" Width="244px"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID= "RequiredFieldValidator3" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td style="height: 68px">Description </td>
                    <td style="width: 406px; height: 68px"><asp:TextBox ID="txtdes" runat="server" Height="34px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><asp:Button ID="btnOrder" runat="server" Text="Confirm Order" OnClick="btnOrder_Click"></asp:Button> </td>
                    
                </tr>
            </table>
        </center>
    <br />
    <br />
    <br />
    <br />

</asp:Content>
