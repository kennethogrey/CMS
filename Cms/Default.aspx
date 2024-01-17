<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cms._Default" EnableEventValidation="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">CONTRACT MANAGEMENT SYSTEM - GROUP 1</h1>
                                    </div>
                                    <div runat="server" class="user">
                                        <div runat="server" id="errorDiv">
                                            <p class="text-danger"> Invalid Email or Password. Please try again</p>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox runat="server" ID="email" CssClass="form-control form-control-user" 
                                                placeholder="Enter Email Address..." TextMode="Email"/>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvEmail" CssClass="text-danger" ControlToValidate="email" ErrorMessage="Enter Your Email" Display="Dynamic" />
                                            <asp:RegularExpressionValidator runat="server" ID="revEmail" CssClass="text-danger" ControlToValidate="email" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox runat="server" ID="password" CssClass="form-control form-control-user" placeholder="Enter Your Password..." TextMode="Password"/>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="password" CssClass="text-danger" ID="rfvpassword" ErrorMessage="Enter Your Password"  Display="Dynamic"/>
                                        </div>

                                        <asp:Button runat="server" ID="loginButton" OnClick="loginButton_Click" CssClass="btn btn-primary btn-user btn-block" Text="Login" />
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

</asp:Content>
