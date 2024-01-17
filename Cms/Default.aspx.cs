using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Cms
{
    public partial class _Default : Page
    {
        DataAccess dataAccess = new DataAccess();
        DataTable userTable = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            errorDiv.Visible = false;

            if (Session["email"] != null)
            {
                int role_id = Convert.ToInt32(Session["role_id"]);
                switch (role_id)
                {
                    case 1:
                        Response.Redirect("~/AdminDashboard.aspx");
                        break;
                    case 2:
                        Response.Redirect("~/ProcurementManagerDashboard.aspx");
                        break;
                    case 3:
                        Response.Redirect("~/ContractManagerDashboard.aspx");
                        break;
                    case 4:
                        Response.Redirect("~/SupplierDashboard.aspx");
                        break;
                }
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string emailString = email.Text.ToString().Trim();
                    string passwordString = password.Text.ToString().Trim();

                    userTable = dataAccess.GetUser_1(emailString, passwordString);
                    if(userTable.Rows.Count > 0)
                    {
                        if(userTable.Rows[0]["email"].ToString() == emailString && userTable.Rows[0]["password"].ToString() == passwordString)
                        {
                            Session["email"] = emailString;
                            Session["role_id"] = userTable.Rows[0]["role_id"];
                            Session["full_name"] = userTable.Rows[0]["full_name"];
                            int role_id = Convert.ToInt32(userTable.Rows[0]["role_id"]);
                            switch (role_id)
                            {
                                case 1:
                                    Response.Redirect("~/AdminDashboard.aspx");
                                    break;
                                case 2:
                                    Response.Redirect("~/ProcurementManagerDashboard.aspx");
                                    break;
                                case 3:
                                    Response.Redirect("~/ContractManagerDashboard.aspx");
                                    break;
                                case 4:
                                    Response.Redirect("~/SupplierDashboard.aspx");
                                    break;
                            }
                        }
                        else
                        {
                            errorDiv.Visible = true;
                        }
                    }
                    else
                    {
                        errorDiv.Visible = true;
                    }
                }
                catch(Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}