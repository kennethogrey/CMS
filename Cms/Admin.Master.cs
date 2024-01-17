using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cms
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null || Session["role_id"] == null ||
                string.IsNullOrEmpty(Session["email"].ToString()) || string.IsNullOrEmpty(Session["role_id"].ToString()))
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
    }
}