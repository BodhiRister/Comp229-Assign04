using System;
using System.Collections;
using System.Linq;
using System.Net.Mail;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GameModel.ReadAllGameModels(MapPath("Assign04.json"));
        }


        public ICollection GetAllGameModels()
        {
            return GameModel.AllGameModels;
        }

        protected void GridViewAllGameModels_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string modelName = GridViewAllGameModels.Rows[GridViewAllGameModels.SelectedIndex].Cells[1].Text;

            Session["model"] =
                (from m in GameModel.AllGameModels
                 where m.Name == modelName
                 select m).First();
            Response.Redirect("~/Model.aspx");
        }

        protected void btnEmailMe_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage message = new MailMessage();
            try
            {
                MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "Comp229Assign04");
             
                MailAddress toAddress = new MailAddress(txtEmailAddress.Text);
                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Game Email Subscribtion";
                message.Body = "Welcome to the game world";
                Attachment jsonFile = new Attachment(MapPath("Assign04.json"));
                message.Attachments.Add(jsonFile);
                smtpClient.Host = "smtp-mail.outlook.com";
                smtpClient.Port = 587;
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "comp229pwd");
                
                smtpClient.Send(message);
                statusLabel.Text = "Email sent.";
            }
            catch (Exception ex)
            {
                statusLabel.Text = "Coudn't send the message!";
            }
        }
    }
}