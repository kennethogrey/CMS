using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cms
{
    public partial class CreateNewUser : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rolesDropDownList.DataSource = dataAccess.GetRoles(); 
                rolesDropDownList.DataTextField = "name"; // Set DataTextField first
                rolesDropDownList.DataValueField = "id";   // Set DataValueField next
                rolesDropDownList.DataBind();
            }
        }

        protected void rolesDropDownList_DataBound(object sender, EventArgs e)
        {
            rolesDropDownList.Items.Insert(0, new ListItem("Select a Role", ""));
        }

        protected void saveUser_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string password = "secret";
            }
        }
    }
}