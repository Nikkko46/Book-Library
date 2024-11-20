using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLib.App_Start
{
    public partial class Add_Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                con.Open();
                string checkBook = "select count(*) from books where Book_Name='" + TextBoxAddBook.Text + "'";
                SqlCommand cmd = new SqlCommand(checkBook, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp >= 1)
                {
                    Session["exist"] = "2";
                    Response.Write("<script>alert('Book already added!')</script>");
                    string checkStock = "select Stock from books where Book_Name='" + TextBoxAddBook.Text + "'";
                    SqlCommand stockcmd = new SqlCommand(checkStock, con);
                    int stock = Convert.ToInt32(stockcmd.ExecuteScalar().ToString());
                    if (stock >= 10)
                    {

                        Response.Write("<script>alert('Stock already full!')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Stock not full, you may still add further books.')</script>");
                    }
                }
                con.Close();
            }
        }

        protected void ButtonAdd_book_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["exist"] != "2")
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    con.Open();
                    string insertBook = "insert into books (Book_Name, Author, Publisher, No, Category, Stock) values (@AddBook ,@Author ,@Publisher ,@No ,@Category ,@Stock)";
                    SqlCommand cmd = new SqlCommand(insertBook, con);
                    cmd.Parameters.AddWithValue("@AddBook", TextBoxAddBook.Text);
                    cmd.Parameters.AddWithValue("@Author", TextBoxAuthor.Text);
                    cmd.Parameters.AddWithValue("@Publisher", TextBoxPublisher.Text);
                    cmd.Parameters.AddWithValue("@No", TextBoxNo.Text);
                    cmd.Parameters.AddWithValue("@Category", DropDownListCategory.Text);
                    cmd.Parameters.AddWithValue("@Stock", TextBoxStock.Text);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Book Added')</script>");


                    con.Close();
                }
                else
                {
                    Session["exist"] = "1";
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void Home_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Library.aspx");
        }
    }
}