<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="CreateNewUser.aspx.cs" Inherits="Cms.CreateNewUser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-12 mb-4">
        <div runat="server" class="card">
            <div class="card-body">
                <h3 class="card-title">Create New User</h3>
                <div class="row row-cards">
             
                    <div class="col-md-5">
                        <div class="mb-3" runat="server">
                            <label class="form-label">First Name *</label>
                            <asp:TextBox runat="server" ID="firstName" type="text" CssClass="form-control" placeholder="Enter Your First Name" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvFirstName" ControlToValidate="firstName" ErrorMessage="First Name is required" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Last Name *</label>
                            <asp:TextBox runat="server" ID="lastName" type="text" CssClass="form-control" placeholder="Enter Your Last Name" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvLastName" ControlToValidate="lastName" ErrorMessage="Last Name is required" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="mb-3">
                            <label class="form-label">Role *</label>
                            <asp:DropDownList runat="server" CssClass="form-control form-select" ID="rolesDropDownList" OnDataBound="rolesDropDownList_DataBound">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ID="rfvRoles" ControlToValidate="rolesDropDownList" ErrorMessage="Role is required" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Email Address *</label>
                            <asp:TextBox ID="email" runat="server" TextMode="Email" Text="Enter your Email Address" CssClass="form-control"/>
                            <asp:RequiredFieldValidator runat="server" ID="rvfEmail" ControlToValidate="email" ErrorMessage="Email Address is required" Display="Dynamic" CssClass="text-danger"/>
                            <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="email" 
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Address." CssClass="text-danger" />
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Primary Phone Number *</label>
                            <asp:TextBox runat="server" ID="primaryNumber" CssClass="form-control" placeholder="Enter Your Primary Phone Number" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvPrimaryNumber" ControlToValidate="primaryNumber" ErrorMessage="Primary Phone Number is required" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Secondary Phone Number</label>
                            <asp:TextBox runat="server" ID="secondaryNumber" CssClass="form-control" placeholder="Enter Your Secondary Phone Number" />
                        </div>
                    </div>
                    <div class="card-footer bg-white text-end">
                        <asp:Button ID="saveUser" runat="server" CssClass="btn btn-primary" Text="Save User" OnClick="saveUser_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

