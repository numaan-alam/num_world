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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Numaan\Desktop\etms\etms\App_Data\etms.mdf;Integrated Security=True");
       

        string dptmt;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            // for retreiving  task of current employee
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from t_Task where task_Employee_Id in (select user_Id from t_User where user_Id='" + Session["user_Id"] + "')";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "t_User");
            
            dptmt = ds.Tables[0].Rows[0][5].ToString();
            Response.Write(dptmt);
        
            GridView1.DataSource = ds;
            GridView1.DataBind();
        
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}