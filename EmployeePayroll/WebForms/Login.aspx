<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayroll.WebForms.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/Login.css" rel="stylesheet" />
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
                                    <span style="margin-left: 100px;">Sign In</span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Sign In"></asp:Label>
                                </center>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Email" runat="server" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage ="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div>
                            <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password</asp:LinkButton>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-8">
                                <div class="form-group">
                                    <table>
                                        <tr>
                                            <asp:LinkButton ID="LinkButton2" runat="server">Create Account</asp:LinkButton>
                                        </tr>
                                        <tr>
                                            <asp:Button ID="Button2" runat="server" Text="Next" Style="float: right; /* margin-left: 23px; */margin-right: -186px;"></asp:Button>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
