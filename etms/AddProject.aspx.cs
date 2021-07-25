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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Numaan\Desktop\etms\etms\App_Data\etms.mdf;Integrated Security=True");
       
        string mgrId;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            // for displaying current manager id
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from  t_User where user_Id='" + Session["user_Id"] + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "t_User");
            mgrId= ds.Tables[0].Rows[0][0].ToString();
        }

        protected void addprojectbtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spAddProject", con);
            cmd.CommandType = CommandType.StoredProcedure;

            
            cmd.Parameters.Add("@project_Title", SqlDbType.VarChar, 20).Value = TextBox1.Text.ToString();
            cmd.Parameters.Add("@project_Description", SqlDbType.VarChar, 250).Value = TextBox2.Text.ToString();
            cmd.Parameters.Add("@project_StartTime", SqlDbType.DateTime).Value = TextBox3.Text.ToString();
            cmd.Parameters.Add("@project_EstimateTime", SqlDbType.DateTime).Value = TextBox4.Text.ToString();
            cmd.Parameters.Add("@project_Manager_ID", SqlDbType.VarChar, 20).Value = mgrId;
            cmd.Parameters.Add("@project_Status", SqlDbType.VarChar, 50).Value = DropDownList1.Text.ToString();

            try
            {
              //  con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("project added successfully");
            }
            catch (Exception ex)
            {
                Response.Write("Invalid credentials");

            }
            finally
            {
                con.Close();
                con.Dispose();
            }
           
        }

      
       
    }
}