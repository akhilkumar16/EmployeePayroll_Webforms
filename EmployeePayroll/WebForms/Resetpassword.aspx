<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Resetpassword.aspx.cs" Inherits="EmployeePayroll.WebForms.Resetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="../Styles/Resetpassword.css" rel="stylesheet" />
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
                                    <span style="margin-left: 100px;">Resetpassword</span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Resetpassword"></asp:Label>
                                </center>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="confirm" runat="server" placeholder="Confirm Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="confirm" ErrorMessage="confirm password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div>
                            <asp:Button ID="Button1" runat="server" Text="Reset Password" style="margin-left: 233px;"/>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
