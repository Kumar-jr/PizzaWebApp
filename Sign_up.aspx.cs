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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANKIT\SQLEXPRESS;Database=PizzaDb;Integrated Security=True");
        SqlCommand cmd,cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfUserExists()==true)
                Response.Write("<script>alert('Registration Unsucessfull. User with the same UserName already exists.')</script>");
            else
            {
                try
                {
                    if (con.State == ConnectionState.Closed)
                        con.Open();

                    string str = "insert into SignUp values (' " + txt1.Text + " ','" + txt2.Text + "','" + txt3.Text + "','" + txt5.Text + "')";
                    string str1 = "insert into Users values (' " + txt1.Text + " ','" + txt2.Text + "','" + RadioButtonList1.SelectedValue.ToString() + "','" + txt3.Text + "','" + txt5.Text + "')";
                    cmd1 = new SqlCommand(str1, con);
                    cmd = new SqlCommand(str, con);
                    cmd.ExecuteNonQuery();
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script>alert('Registration Sucessfully Done')</script>");
                    Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Registration Unsucessfull.')</script>");
                    Response.Write(ex.ToString());
                }
                finally
                {
                    con.Close();
                }
            }
            
        }
        bool checkIfUserExists()
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand("Select * from SignUp Where UserName='" + txt3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    return true;
                }
                else
                    return false;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }
    }
}