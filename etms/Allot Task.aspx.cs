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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Numaan\Desktop\etms\etms\App_Data\etms.mdf;Integrated Security=True");
        string empID, prjId;
        protected void Page_Load(object sender, EventArgs e)
        {
          /* con.Open();
            // for retreiving  current manager deparment
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from t_Project where project_Manager_ID in (select user_Id from t_User where user_Id='" + Session["user_Id"] + "')";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable("t");
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "t_Project");
            DropDownList1.DataSource = da;
            DropDownList1.DataTextField = "project_Title";
         //   DropDownList1.DataValueField = "project_Id";
            DropDownList1.DataBind();
          //  prjtitle = ds.Tables[0].Rows[0][1].ToString();
           // Response.Write(prjtitle);
        
           */

            if (Page.IsPostBack == false)
            {
                //for retrieving project name
               string sql = "select * from t_Project where project_Manager_ID in (select user_Id from t_User where user_Id='" + Session["user_Id"] + "')";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "s");
                DataTable dt = ds.Tables["s"];
                DropDownList1.Items.Add("--Select--");


                foreach (DataRow r in dt.Rows) 
                {
                    DropDownList1.Items.Add(r["project_Title"].ToString());
                }

             

                //for retrieving employee name
                string sql2 = "select * from t_User where  user_Department =(select user_Department from t_User where user_Id='" + Session["user_Id"] + "') and user_Role='E'";
                SqlDataAdapter da2 = new SqlDataAdapter(sql2, con);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2, "s2");
                DataTable dt2 = ds2.Tables["s2"];
                DropDownList2.Items.Add("--Select--");


                foreach (DataRow r2 in dt2.Rows)
                {
                    DropDownList2.Items.Add(r2["user_Name"].ToString());
                }


            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {



            SqlCommand cmd = new SqlCommand("spAddTask", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@task_Name", SqlDbType.VarChar, 20).Value = TextBox1.Text.ToString();
            cmd.Parameters.Add("@task_Description", SqlDbType.VarChar, 250).Value = TextBox2.Text.ToString();
            cmd.Parameters.Add("@task_Project_Title", SqlDbType.VarChar, 50).Value =DropDownList1.Text.ToString();
            cmd.Parameters.Add("@task_StartDate", SqlDbType.DateTime).Value =  TextBox3.Text.ToString();
            cmd.Parameters.Add("@task_EstimateTime", SqlDbType.DateTime).Value = TextBox4.Text.ToString();
            cmd.Parameters.Add("@task_Employee_Name", SqlDbType.VarChar, 20).Value =DropDownList2.Text.ToString();
            cmd.Parameters.Add("@task_Project_Id", SqlDbType.Int).Value = Label4.Text.ToString();
            cmd.Parameters.Add("@task_Employee_Id", SqlDbType.VarChar, 20).Value = Label5.Text.ToString();
            cmd.Parameters.Add("@task_Status", SqlDbType.VarChar, 50).Value = DropDownList3.Text.ToString();

            try
            {
                 con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Task Alloted successfully");
          }
            catch (Exception ex)
            {
                Response.Write("Invalid Credentials!");

            }
            finally
            {
                con.Close();
                con.Dispose();
            }

          

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           }

        protected void DropDownList2_Load(object sender, EventArgs e)
        {
        

        }

        protected void DropDownList2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_Init(object sender, EventArgs e)
        {

          
        }

        protected void DropDownList2_TextChanged1(object sender, EventArgs e)
        {
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from t_User where user_Name='" + DropDownList2.Text.ToString() + "'";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable("t");
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();
                da.Fill(ds, "t_User");
                empID = ds.Tables[0].Rows[0][0].ToString();
                Label5.Text = empID;
            }
            catch (IndexOutOfRangeException ex)
            {
                Response.Write("Select Any Employee First!");
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from t_Project where project_Title='" + DropDownList1.Text.ToString() + "'";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable("t");
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();
                da.Fill(ds, "t_Project");
                prjId = ds.Tables[0].Rows[0][0].ToString();
                Label4.Text = prjId;
            }
            catch (IndexOutOfRangeException ex)
            {
                Response.Write("Select Any Project First!");
            }
        }
    }
}