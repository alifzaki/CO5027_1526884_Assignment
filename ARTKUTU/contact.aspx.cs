using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARTKUTU
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("artkutu23@gmail.com", "artkutu236");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("artkutu23@gmail.com", "artkutu23@gmail.com");
            msg.Subject = "Name: " + Txtname.Text + "Subject: " + Txtsubject.Text + "Email:" + Txtemail.Text;
            msg.Body = Txtmessage.Text;
            

            try
            {
                smtpClient.Send(msg);
                LitMessage.Text = "<p> Success, mail sent using SMTP with secure connection and credentials </p>";
            }
            
            catch (Exception exp)
            {
                LitMessage.Text = "<p> Send failed: " + exp.Message + ":" + exp.InnerException + "</p>";
            }
        }

        protected void Txtemail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}