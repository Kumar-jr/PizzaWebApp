using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Online_Pizza.UserMaster
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pizzaOrder.Visible = false;
         
        }

        protected void pizzaOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("PizzaOrder.aspx");
        }
    }
}