using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


namespace ARTKUTU
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click1(object sender, EventArgs e)
        {
            // create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("db_1526884_co5027_asgConnectionString3");

            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            //create user
            var user = new IdentityUser() { UserName = txtFullName.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);

            IdentityRole endUserRole = new IdentityRole("Admin");
            //create role name (admin)
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "Admin");

            if (result.Succeeded)
            {
                Server.Transfer("login.aspx", true);
            }

            else
            {
                litError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}