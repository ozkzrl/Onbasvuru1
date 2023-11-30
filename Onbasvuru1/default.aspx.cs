using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Net.Mail;
using System.Net;


namespace Onbasvuru1
{
    public partial class _default : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Server=127.0.0.1;Database=onbasvuru;Uid=root;Password=Qwer4321");
        MySqlCommand cmd = new MySqlCommand();



        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                    {
                DropDownList2.Items.Insert(0, new ListItem(String.Empty, "0"));
                DropDownList2.SelectedIndex = 0;
                     }
           
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        { 
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox6.Text == "" || CheckBox1.Checked == false || DropDownList1.SelectedIndex == 0 || DropDownList2.SelectedIndex == 0)
            {   

                Response.Write("<script LANGUAGE='JavaScript' >alert('Bir alanı boş bıraktınız.')</script>");
            }
            else
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into basvuru (ogrAdSoyad, okulAd, sinif, veliAdSoyad, veliTelbir, veliTeliki, eposta, veliOnay) values (@ogrAdSoyad, @okulAd, @sinif, @veliAdSoyad, @veliTelbir, @veliTeliki, @eposta, @veliOnay)";
                cmd.Parameters.AddWithValue("@ogrAdSoyad", TextBox1.Text);
                cmd.Parameters.AddWithValue("@okulAd", DropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@sinif", DropDownList2.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@veliAdSoyad", TextBox3.Text);
                cmd.Parameters.AddWithValue("@veliTelbir", TextBox4.Text);
                cmd.Parameters.AddWithValue("@veliTeliki", TextBox5.Text);
                cmd.Parameters.AddWithValue("@eposta", TextBox6.Text);

                string veliOnay = "";

                if (CheckBox1.Checked == true)
                {
                    veliOnay = "onaylıyorum";
                }
                else
                {
                    veliOnay = "onaylamıyorum";
                }
                cmd.Parameters.AddWithValue("@veliOnay", veliOnay);
                cmd.ExecuteNonQuery();
                con.Close();
                MailMessage mesajim = new MailMessage();
                SmtpClient istemci = new SmtpClient();
                istemci.Credentials = new System.Net.NetworkCredential("ozkanzorludur@hotmail.com", "**********");
                istemci.Port = 587;
                istemci.Host = "smtp-mail.outlook.com";
                istemci.EnableSsl = true;
                mesajim.To.Add(TextBox7.Text);
                mesajim.To.Add(TextBox8.Text);
                mesajim.To.Add(TextBox9.Text);
                mesajim.To.Add("karlsruhe@meb.gov.tr");
                mesajim.From = new MailAddress("ozkanzorludur@hotmail.com");
                mesajim.Subject = TextBox1.Text+" "+"adlı öğrenci Türkçe dersine başvurmuştur.";
                mesajim.Body = "Vor- und Nachname des Schülers:" + " "+TextBox1.Text+ "Name der Schule:" + " "+DropDownList1.Text+"Klasse:"+" "+DropDownList2.Text+ "Name des Erziehungsberechtigten:"+" "+TextBox3.Text+ "Telefon des Erziehungsberechtigten 1:"+" "+TextBox4.Text+ "Telefon des Erziehungsberechtigten 2:"+" "+TextBox5.Text+"EMail:"+" "+TextBox6.Text; 
                istemci.Send(mesajim);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Türkçe dersine önbaşvurunuz ilgili makamlara iletilmiştir.')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                DropDownList1.Items.Clear();
                DropDownList2.SelectedIndex = 0;
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                CheckBox1.Checked = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
             cmd = new MySqlCommand("Select EMAIL,OKUL_EMAIL,KOORDİNATOR_EMAIL,ATASELİK_EMAİL from OgrtOkul where KURUM_ADI='" + DropDownList1.Text + "'", con);
            MySqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox7.Text = dr["EMAIL"].ToString();
                TextBox8.Text = dr["OKUL_EMAIL"].ToString();
                TextBox9.Text = dr["KOORDİNATOR_EMAIL"].ToString();
            } 
            con.Close();
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            MySqlCommand cmd = new MySqlCommand("Select KURUM_ADI, EMAIL from ogrtOkul where POSTA_KODU='" + TextBox2.Text + "'", con);
            MySqlDataReader dr;
             con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {   
                
                DropDownList1.Items.Add(dr["KURUM_ADI"].ToString());     
                 
            }
           DropDownList1.Items.Insert(0, new ListItem(String.Empty, "0"));
           DropDownList1.SelectedIndex = 0;
           DropDownList1.BackColor = System.Drawing.Color.Aqua;


            con.Close(); 
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        { 

        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
