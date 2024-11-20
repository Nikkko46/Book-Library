using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLib.App_Start
{
    public partial class Search_Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceGridView_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSourceDropDown_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ButtonSearchBook_Click(object sender, EventArgs e)
        {
            GridViewBook.Visible = true;
        }

        protected void Home_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Library.aspx");
        }

        protected void GridViewBook_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}