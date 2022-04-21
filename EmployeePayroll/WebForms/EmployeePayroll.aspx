<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="EmployeePayroll.aspx.cs" Inherits="EmployeePayroll.WebForms.EmployeePayroll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/EmployeePayroll.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec1" style="margin-left: 380px;margin-top: 30px;">
    <div class="Header">
    <h3> Employee Payroll Form </h3>
    </div> 
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="564px" height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Profile image"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="612px" RepeatLayout="Flow" Height="44px" CellPadding="1" CellSpacing="1" CssClass="abc">
                <asp:ListItem Value="../Assets/profile-images/Female (4).png"><img src="../Assets/Profilepicweb/Ellipse -8.png" alt="img1" /></asp:ListItem>
                <asp:ListItem Value="../Assets/profile-images/Male (3).png"><img src="../Assets/Profilepicweb/Ellipse 1.png" alt="img2"/></asp:ListItem>
                <asp:ListItem Value="../Assets/profile-images/Female (3).png"><img src="../Assets/Profilepicweb/Ellipse -3.png" alt="img3" /></asp:ListItem>
                <asp:ListItem Value="../Assets/profile-images/Male (2).png"><img src="../Assets/Profilepicweb/Ellipse -4.png" alt="img4" /></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />   
        <div>
            <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>&emsp;&ensp;&nbsp; 
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="450px" RepeatLayout="Flow" CssClass="cba">
            <asp:ListItem Text=" Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text=" Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>             
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>  
        <br />        
        <div>
            <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>&ensp;&nbsp;
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" Width="640px" RepeatLayout="Flow" CssClass="abd" Height="20px">
                <asp:ListItem Text="&ensp;HR&emsp;" Value="HR"> </asp:ListItem>
                <asp:ListItem Text="&ensp;Sales&emsp;" Value="Sales"></asp:ListItem>
                <asp:ListItem Text="&ensp;Finance&emsp;" Value="Finance"></asp:ListItem>
                <asp:ListItem Text="&ensp;Engineer&emsp;" Value="Engineer"></asp:ListItem>
                <asp:ListItem  Text="&ensp;Others&emsp;" Value="Others"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
        <div>
            <label>Salary</label>&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="358px" Height="25px">
                <asp:ListItem Text="Select Salary" Value="0"></asp:ListItem>
                <asp:ListItem Text="0-2.5Lac" Value="250000"></asp:ListItem>
                <asp:ListItem Text="2.5-5.0Lac" Value="500000"></asp:ListItem>
                <asp:ListItem Text="5.0-10.0Lac" Value="1000000"></asp:ListItem>
                <asp:ListItem Text="10.0Lac &Above" Value="1500000"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
              <br />
        <div >
            <label>Notes</label>&emsp;&emsp;&emsp;&emsp;&emsp;        
            <asp:TextBox ID="TextBox1" runat="server" placeholder="(optional)" width="550px" Height="70px" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" class="btn btn-outline-secondary" Text="Cancel" Width="150px" Height="40px" />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:Button ID="Button2" runat="server" class="btn btn-outline-success" Text="Submit" Width="151px" Height="40px" OnClick="Button2_Click"/>&emsp;
            <asp:Button ID="Button3" runat="server" class="btn btn-outline-secondary" Text="Reset" Width="150px" Height="40px" />
           
        </div>
    </div>


</asp:Content>
