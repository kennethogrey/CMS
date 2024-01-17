<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Cms.AdminDashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="col-12">
        <div class="row g-2 align-items-center mb-2">
                <div class="col">
                <h2 class="page-title">
                    Dashboard
                </h2>
                </div>
                <!-- Page title actions -->
                <div class="col-auto ms-auto d-print-none">
                    <div class="btn-list">
                      <a href="/CreateNewUser" class="btn btn-primary d-none d-sm-inline-block">
                        <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 5l0 14"></path><path d="M5 12l14 0"></path></svg>
                        Create new user
                      </a>
                      <a href="/CreateNewUser" class="btn btn-primary d-sm-none btn-icon" aria-label="Create new user">
                        <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 5l0 14"></path><path d="M5 12l14 0"></path></svg>
                      </a>
                    </div>
                </div>
            </div>
        <div class="card">
            <div class="table-responsive">
                <table class="table table-vcenter card-table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Title</th>
                            <th>Role</th>
                            <th class="w-1"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex py-1 align-items-center">
                                    <span class="avatar me-2" style="background-image: url(./static/avatars/006m.jpg)"></span>
                                    <div class="flex-fill">
                                        <div class="font-weight-medium">Lorry Mion</div>
                                        <div class="text-muted"><a href="#" class="text-reset">lmiona@livejournal.com</a></div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div>Automation Specialist IV</div>
                                <div class="text-muted">Accounting</div>
                            </td>
                            <td class="text-muted">User
                            </td>
                            <td>
                                <a href="#">Edit</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
               <%-- <asp:GridView runat="server" ID="users" CssClass="table table-vcenter card-table" AutoGenerateColumns="false" OnRowEditing="users_RowEditing" OnRowUpdating="users_RowUpdating" OnRowCancelingEdit="users_RowCancelingEdit">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HiddenField id="hiddenUserId" runat="server" Value="<%#DataBinder.Eval(Container.DataItem, "id") %>"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="full_name" HeaderText="Full Name" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="primary_phone" HeaderText="Primary Phone" />
                        <asp:BoundField DataField="secondary_phone" HeaderText="Seconday Phone" />
                    </Columns>
                </asp:GridView>--%>
            </div>
        </div>
    </div>
</asp:Content>
