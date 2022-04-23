<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="EmployeePayroll.WebForms.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/Homepage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="card">
    <div class="heading" style="margin-top: 120px;margin-left: 180px;" >
        <p>Employee Details</p>
        <asp:Button ID="Button1" class="btn addUser" runat="server" OnClick="Button1_Click" Text="+  Add User" />
    </div>
    <br />
    <div class="grid">
        <asp:GridView ID="GridView2" runat="server" BackColor="White" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" Width="1090px" ForeColor="Black">
            <Columns>
                <asp:TemplateField HeaderText="" SortExpression="ImgUrl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
<%--                <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="Empid" />--%>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="Salary" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ButtonType="Image" CancelImageUrl="../Assets/Iconsweb/delete-black-18dp.svg" DeleteImageUrl="../Assets/Iconsweb/delete-black-18dp.svg" EditImageUrl="../Assets/Iconsweb/create-black-18dp.svg" HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="../Assets/Iconsweb/create-black-18dp.svg" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#42515F" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
        </div>
</asp:Content>
