<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="EmployeePayroll.WebForms.Forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../Styles/Forgotpassword.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>EmployeePayrollApp</h4>
                                    <span style="margin-left: 100px;">Forgot Password</span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Forgot Password"></asp:Label>
                                </center>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Email" runat="server" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div>
                                 <asp:Button ID="Button1" runat="server" Text="Next" style="margin-left: 280px;" />
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
