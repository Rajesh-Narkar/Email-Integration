using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mail.Net;

namespace Email_Integration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("rajeshnarkar05@gmail.com");
            mail.To.Add(ListBox1.Text);
            mail.Subject=TextBox2.Text;
            mail.Body=TextBox3.Text;

            //if (FileUpload1.HasFile)
            //{
            //    Attachment attachment = new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName);
            //    mail.Attachments.Add(attachment);
            //}

            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                Attachment attachment = new Attachment(postedFile.InputStream, System.IO.Path.GetFileName(postedFile.FileName));
                mail.Attachments.Add(attachment);
            }

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            smtpClient.Credentials = new NetworkCredential("rajeshnarkar05@gmail.com", "xcbxsohmepzvwhyd");
            smtpClient.Send(mail);
            Response.Write("<script>alert('Email Send Successfully')</script>");
        }
    }
}