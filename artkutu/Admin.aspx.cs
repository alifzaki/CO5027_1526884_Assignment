﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARTKUTU
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void lbInsert_Click(object sender, EventArgs e)
        {
            ProductDataSource.InsertParameters["Name"].DefaultValue = 
                ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;

            ProductDataSource.InsertParameters["Code"].DefaultValue =
              ((TextBox)GridView1.FooterRow.FindControl("txtCode")).Text;

            ProductDataSource.InsertParameters["Price"].DefaultValue =
              ((TextBox)GridView1.FooterRow.FindControl("txtPrice")).Text;

            ProductDataSource.InsertParameters["Stock"].DefaultValue =
              ((TextBox)GridView1.FooterRow.FindControl("txtStock")).Text;

            ProductDataSource.Insert();
        }

    }
    
}