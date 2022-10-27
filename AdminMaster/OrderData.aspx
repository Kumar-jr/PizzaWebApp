<%@ Page Title="OrderData" Language="C#" MasterPageFile="~/AdminMaster/Admin.Master" AutoEventWireup="true" CodeBehind="OrderData.aspx.cs" Inherits="Online_Pizza.AdminMaster.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <center>
         <br />
         <br />
         <br />
         
         <br />
         <br />
         <br />
<asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Width="600px" GridLines="None" Height="578px" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
    <Columns>
        <asp:TemplateField HeaderText="OrderId">
            <ItemTemplate>
                <asp:Label ID="lbl1" runat="server" Text='<%#Eval("OrderId") %>' />
            </ItemTemplate>
        </asp:TemplateField>

           <asp:TemplateField HeaderText="OrderName">
            <ItemTemplate>
                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("OrderName") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("Quantity") %>' />
            </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="PizzaCategory">
            <ItemTemplate>
                <asp:Label ID="lbl3" runat="server" Text='<%#Eval("PizzaCategory") %>' />
            </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="OrderDate">
            <ItemTemplate>
                <asp:Label ID="lbl4" runat="server" Text='<%#Eval("OrderDate") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="CustomerName">
            <ItemTemplate>
                <asp:Label ID="lbl4" runat="server" Text='<%#Eval("CustomerName") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="lbl4" runat="server" Text='<%#Eval("Address") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Phone">
            <ItemTemplate>
                <asp:Label ID="lbl5" runat="server" Text='<%#Eval("Phone") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label ID="lbl6" runat="server" Text='<%#Eval("Description") %>' />
            </ItemTemplate>
        </asp:TemplateField>


        
    </Columns>
   
</asp:GridView>
            <br />
          <asp:TextBox ID="TextBox1" runat="server" PlaceHolder = OrderId></asp:TextBox>
       
         <br />
       
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DeleteOrder"/>
         <br />
         <br />
         <br />
         <br />
    </center>
</asp:Content>
