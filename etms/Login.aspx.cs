using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace etms
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Numaan\Desktop\etms\etms\App_Data\etms.mdf;Integrated Security=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from  t_User where user_Id='" + TextBox1.Text + "' and user_Password='" + TextBox2.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);



            try
            {
                string role;
                role = dt.Rows[0][6].ToString().Trim();


                foreach (DataRow dr in dt.Rows)
                {

                    if (role == "A")
                    {
                        Session["user_Id"] = dr["user_Id"].ToString();
                        Response.Redirect("AdminPage.aspx");
                        

                    }
                    if (role == "M")
                    {
                        Session["user_Id"] = dr["user_Id"].ToString();
                        Response.Redirect("ManagerPage.aspx");
                    }
                    if (role == "E")
                    {
                        Session["user_Id"] = dr["user_Id"].ToString();
                        Response.Redirect("EmployeePage.aspx");
                    }

                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Invalid Username Or Password";
            }




            con.Close();






        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}