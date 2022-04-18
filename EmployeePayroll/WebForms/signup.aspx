<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="EmployeePayroll.WebForms.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/Signup.css" rel="stylesheet" />
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
                                    <span style="margin-left: 100px;">Create your EmployeePayroll Account</span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="create account"></asp:Label>
                                </center>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="FirstName" runat="server" placeholder="First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="First name required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="Last name required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="Username"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="username" ErrorMessage="username required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <div>
                                        <span>You can use letters,numbers and periods</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="confirmpassword" runat="server" placeholder="Confirm password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmpassword" ErrorMessage="confirmpassword required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div>
                            <span>Use 8 or more characters with a mix of letters, numbers & symbols</span>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <asp:CheckBox ID="CheckBox1" runat="server" placeholder="show password" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Show Password"></asp:CheckBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="form-group">
                                    <%--<asp:Button ID="Button2" runat="server" Text="Button" />--%>
                                    <a class="btn btn-light link" href="Login.aspx">Sign in instead</a>
                                    <asp:Button ID="Button1" Style="float: right;" type="button" runat="server" class="btn btn-primary" Text="Next" OnClick="Button1_Click"></asp:Button>
                                    <%--<table>
                                        <tr>
                                            <asp:Button ID="Button1" runat="server" Text="sign-instead"></asp:Button>
                                        </tr>
                                        <tr>
                                            <asp:Button ID="Button2" runat="server" Text="Next" Style="float: right;"></asp:Button>
                                        </tr>
                                    </table>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
