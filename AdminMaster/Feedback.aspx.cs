using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Online_Pizza.AdminMaster
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANKIT\SQLEXPRESS;Database=PizzaDb;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            if (!IsPostBack)
            {
                feadback();
            }

            void feadback()
            {
                try
                {
                    string str = "select * from Feedback";
                    da = new SqlDataAdapter(str, con);
                    da.Fill(ds);

                    GridView2.DataSource = ds;
                    GridView2.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }

            }
        }
    }
}