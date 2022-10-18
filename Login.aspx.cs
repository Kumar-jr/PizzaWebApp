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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANKIT\SQLEXPRESS;Database=PizzaDb;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                if (DropDownListLogin.SelectedValue.ToString() == "User")
                {
                    //if(Txtname.Text=="User" && txtpass.Text=="123456")
                    //{
                    //    Response.Redirect("PizzaOrder.aspx");
                    //}
                    //else
                    //{
                    //    Response.Redirect("PizzaOrder.aspx");
                    //}
                    SqlCommand cmd = new SqlCommand("select * from SignUp where UserName='" + Txtname.Text.Trim()
                        + "' and Password='" + txtpass.Text + "'", con);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('" + "Welcome" + dr.GetValue(0).ToString() + "');</script>");
                            Session["UserName"]= dr.GetValue(0).ToString();
                        }
                        Response.Redirect("../UserMaster/PizzaOrder.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid User');</script>");
                    }
                }
                //    string str = "select * from SignUp where UserName='" + Txtname.Text.Trim() + "' and Password='" + txtpass.Text + "'";
                //    da = new SqlDataAdapter(str, con);
                //    DataSet ds = new DataSet();
                //    da.Fill(ds);

                //    if (dt.Rows.Count > 0)
                //    {
                //        Response.Redirect("../UserMaster/MyOrder.aspx");
                //    }
                //    
                //}
                else if (DropDownListLogin.SelectedValue.ToString() == "Admin")
                {
                    //{
                    //    if (Txtname.Text == "ADMIN" && txtpass.Text == "123456")
                    //    {
                    //        Response.Redirect("../AdminMaster/Home.aspx");
                    //    }
                    //    string str = "select * from Admin where UserName='" + Txtname.Text + "' AND Password='" + txtpass.Text + "'";
                    //    da = new SqlDataAdapter(str, con);
                    //    DataSet ds = new DataSet();
                    //    da.Fill(ds);

                    //    if (dt.Rows.Count > 0)
                    //    {
                    //        Response.Redirect("Home.aspx");
                    //    }
                    //}

                    using (SqlCommand cmd1 = new SqlCommand("select * from Admin where UserName='" + Txtname.Text.Trim()
                   + "' and Password='" + txtpass.Text + "'", con))
                    {
                        SqlDataReader dr1 = cmd1.ExecuteReader();
                        if (dr1.HasRows)
                        {
                            while (dr1.Read())
                            {
                                Response.Write("<script>alert('" + "Welcome" + dr1.GetValue(0).ToString() + "');</script>");
                                Response.Redirect("../AdminMaster/Home.aspx");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}