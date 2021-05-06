using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Create SQL connection object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            //create command object
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT INTO Books VALUES ('" + txtTitle.Text + "', " + ddlAuthor.SelectedValue
                                + ", " + txtPrice.Text + ", '" + txtPublishDate.Text + "', " +
                                ddlPublisher.SelectedValue + ", " + ddlGenre.SelectedValue + ", '')";
            //open the connection
            conn.Open();
            //execute the command
            cmd.ExecuteNonQuery();
            //close the connection
            conn.Close();

            txtTitle.Text = "";
            txtPrice.Text = "";
            txtPublishDate.Text = "";

            Response.Redirect("MyBooks.aspx");

        }
    }
}