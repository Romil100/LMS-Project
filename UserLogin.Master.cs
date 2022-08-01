using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Library.UserLogin
{
    public partial class UserLogin : System.Web.UI.MasterPage
    {
        Database.Database con = new Database.Database();
        int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Connection();

            SqlCommand cmd = con.con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from messages where dusername = '"+Session["Member"].ToString()+"' AND placed = 'No'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            count = Convert.ToInt32(dt.Rows.Count.ToString());

            n1.Text = count.ToString();
            n2.Text = count.ToString();

            r1.DataSource = dt;
            r1.DataBind();

            SqlCommand cmd1 = con.con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Select * from Member where Email = '" + Session["Member"].ToString() + "'";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            sda1.Fill(dt1);

            foreach (DataRow dr1 in dt1.Rows)
            {
                Img1.ImageUrl = dr1["Image"].ToString();
            }


        }

        public string getTwentyCharacter(object myvalues)
        {
            string a;
            a = Convert.ToString(myvalues.ToString());
            string b = "";

            if (a.Length >= 15)
            {
                b = a.Substring(0, 15);
                return b.ToString() + "...";
            }
            else
            {
                b = a.ToString();
                return b.ToString();
            }

        }
    }
}