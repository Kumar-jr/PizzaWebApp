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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANKIT\SQLEXPRESS;Database=PizzaDb;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (!IsPostBack)
            {
                addfeedback();
            }
        }
        void addfeedback()
        {
            try
            {
                string str = "select * from Orders";
                da = new SqlDataAdapter(str, con);
                da.Fill(ds);

                GridView5.DataSource = ds;
                GridView5.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(con.State == ConnectionState.Closed)
                    con.Open();
              
                SqlCommand cmd = new SqlCommand("Delete From Orders Where OrderId= '" +
                    TextBox1.Text.ToString().Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Order Deleted');</script>");
                Response.AddHeader("REFRESH", "1;URL= http://localhost:56155/AdminMaster/OrderData.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
    }
}