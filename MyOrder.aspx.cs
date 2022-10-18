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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANKIT\SQLEXPRESS;Database=PizzaDb;Integrated Security=True");
        SqlCommand cmd;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        int id1 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string str = "select max(OrderId) as oid from Orders";
            da = new SqlDataAdapter(str, con);
            da.Fill(ds);
            id1 = 0;
            try
            {
                id1 = int.Parse(ds.Tables[0].Rows[0]["oid"].ToString());
            }
            catch (Exception ex)
            {
          
            }
            if(id1>0)
            {
                id1++;

            }
            else
            {
                id1 = 1;
            }
            Label1.Text = id1.ToString();
        }

        protected void txtorder_TextChanged(object sender, EventArgs e)
        {
            txtorder.Text = DateTime.Now.ToString ("dd/mm/yyyy");
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            try
            {

                string srt1 = "insert into Orders values(" + Label1.Text + ",'" + txtname.Text + "','"+ DropDownList2.SelectedValue.ToString() + "','" + DropDownList1.SelectedValue.ToString() + "','" + txtorder.Text + "','"+ TextBox1.Text.ToString() + "','" + txtaddress.Text + "','" + txtphone.Text+ "','" + txtdes.Text + "')";
                cmd = new SqlCommand(srt1, con);
                cmd.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
            
            Response.Write("<script>alert('Order Confirmed');</script>");
            //Response.Redirect("PizzaOrder.aspx");
            Response.AddHeader("REFRESH", "1;URL= http://localhost:56155/UserMaster/PizzaOrder.aspx");
        }
    }
}