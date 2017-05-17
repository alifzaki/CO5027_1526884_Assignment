using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARTKUTU
{
    public partial class uploadimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string productId = Request.QueryString["ID"];

            string filename = productId + ".jpg";
            CurrentImage.ImageUrl = "~/picture/" + filename;

        }

        protected void Btnupload_Click(object sender, EventArgs e)
        {
            String productID = Request.QueryString["id"];

            String filename = productID + ".jpg";
            String savelocation = Server.MapPath("~/picture/" + filename);

            Imagefileuploadcontrol.SaveAs(savelocation);
        }

        protected void CurrentImage_Click(object sender, ImageClickEventArgs e)
        {
            string productId = Request.QueryString["ID"];

            string filename = productId + ".jpg";
            CurrentImage.ImageUrl = "~/picture/" + filename;
        }
    }
}