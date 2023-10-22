<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Onbasvuru1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{

            background-color:antiquewhite;
        }
        .auto-style1 {
            height: 545px;
            width: 447px;
            float: left;
            margin-left: 0px;
        }
        .auto-style2 {
            height: 545px;
            width: 266px;
            float: left;
        }
        .auto-style3 {
            width: 100%;
            height: 543px;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            width: 100%;
            font-size: small;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            text-align: right;
            width: 391px;
        }
        .auto-style9 {
            text-align: left;
            height: 37px;
            width: 391px;
        }
        .auto-style10 {
            height: 37px;
        }
        .auto-style11 {
            width: 100%;
            font-size: small;
            text-align: justify;
        }
        .auto-style12 {
            height: 542px;
            width: 800px;
            float: left;
        }
        .auto-style13 {
            text-align: center;
            height: 142px;
        }
        .auto-style14 {
            width: 100%;
            font-size: small;
            text-align: justify;
            height: 74px;
        }
        .auto-style15 {
            font-size: medium;
            color: #336600;
        }
        .auto-style16 {
            text-align: left;
            width: 391px;
        }
        .auto-style17 {
            text-align: left;
            width: 391px;
            height: 40px;
        }
        .auto-style18 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style13" style="background-color: #3399FF"><span class="auto-style15"><strong>TC</strong></span><strong><br class="auto-style15" />
                </strong>
                <span class="auto-style15"><strong>KARLSRUHE BAŞKONSOLOSLUĞU</strong></span><strong><br class="auto-style15" />
                </strong>
                <span class="auto-style15"><strong>TÜRKÇE VE TÜRK KÜLTÜRÜ DERSİ ÖN BAŞVURU FORMU</strong></span><strong><br class="auto-style15" />
                </strong>
                <span class="auto-style15"><strong>TÜRKISCHES GENERALKONSULÄT KARLSRUHE</strong></span><strong><br class="auto-style15" />
                </strong>
                <span class="auto-style15"><strong>ANMELDEFORMULAR FÜR MUTTERSPRACHLICHEN ZUSATZUNTERRICHT</strong></span></div>
            <div class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
            <div class="auto-style12">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style16" colspan="2" style="font-family: Arial, Helvetica, sans-serif">Öğrencinin Adı-Soyadı / Vor- und Nachname des Schülers</td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="auto-style6" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" AutoCompleteType="Disabled" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2" style="font-family: Arial, Helvetica, sans-serif">Posta Kodu / Postal Code </td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox2" runat="server" Width="91px" CssClass="auto-style6" AutoPostBack="True" Font-Size="Medium" OnTextChanged="TextBox2_TextChanged" AutoCompleteType="Disabled" MaxLength="5"></asp:TextBox>
                            <br class="auto-style6" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2" style="font-family: Arial, Helvetica, sans-serif">Okul Adı / Name der Schuhe</td>
                        <td colspan="2">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="201px" CssClass="auto-style6" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2" style="font-family: Arial, Helvetica, sans-serif">Sınıf / Klasse</td>
                        <td class="auto-style10" colspan="2">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="55px" CssClass="auto-style6" Font-Size="Medium">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2" style="font-family: Arial, Helvetica, sans-serif">Velinin Adı-Soyadı / Name des Erziehungsberechtigten</td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="auto-style6" Font-Size="Medium" AutoCompleteType="Disabled" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" colspan="2" style="font-family: Arial, Helvetica, sans-serif">Velinin Telefonu 1 / Telefon des Erziehungsberechtigten 1</td>
                        <td colspan="2" class="auto-style18">
                            <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="auto-style6" Font-Size="Medium" AutoCompleteType="Disabled" MaxLength="25" TextMode="Phone"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2" style="font-family: Arial, Helvetica, sans-serif">Velinin Telefonu 2 / Telefon des Erziehungsberechtigten 2</td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox5" runat="server" Width="200px" CssClass="auto-style6" Font-Size="Medium" AutoCompleteType="Disabled" MaxLength="25" TextMode="Phone"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2" style="font-family: Arial, Helvetica, sans-serif">E-Mail </td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox6" runat="server" Width="200px" CssClass="auto-style6" Font-Size="Medium" AutoCompleteType="Disabled" MaxLength="250" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7" colspan="2" style="font-family: Arial, Helvetica, sans-serif">
                            &nbsp;</td>
                        <td colspan="2"><strong><asp:Button ID="Button1" runat="server" Height="42px" Text="KAYDET" Width="110px" CssClass="auto-style4" OnClick="Button1_Click" />
                            </strong>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Arial, Helvetica, sans-serif; ">
                            <asp:TextBox ID="TextBox7" runat="server" Visible="False" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium">
                            <asp:TextBox ID="TextBox8" runat="server" Visible="False" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium">
                            <asp:TextBox ID="TextBox9" runat="server" Visible="False" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" style="font-family: Arial, Helvetica, sans-serif; ">
                            <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Small" Text="   Yukarıda bilgileri yazılı çocuğumun Türkçe ve Türk Kültürü dersine katılmasını istiyorum. / Hiermit erkläre ich mich einverstanden, dass mein Kind an dem türkischen mutterspraclichen Zusatunterricht regelmasig  teilnimmt." />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="4" style="font-family: Arial, Helvetica, sans-serif; "><strong>Bilgi /Hinweis </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" colspan="4" style="font-family: Arial, Helvetica, sans-serif; ">1-Bu bilgiler sadece anadil dersinin uygulanabilmesi için kullanılacaktır, başka kurum ve kişilere verilmeyecektir. / Diese Daten werden nur Durchführung des mutterspraclichen Unterrichts verwendet und werden nicht an weitere Stellen und Personen übermittten. n nur Durchführung des mutterspraclichen Unterrichts verwendet und werden nicht an weitere Stellen und Personen übermittten. </td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="4" style="font-family: Arial, Helvetica, sans-serif; ">2-Türkçe ve Türk Kültürü dersine ön başvurunuz Karlsruhe Başkonslosluğu Eğitim Ataşeliği, çocuğunuzun okuluna, çocuğunuzun okulundaki TTK öğretmenine ve TTK dersi koordinatör öğretmenine iletilecektir. / Ihre Voranmeldung für den Kurs Türkisch und Türkische Kultur wird vom Bildungsattaché des Generalkonsulats Karlsruhe an die Schule Ihres Kindes, den TTK-Lehrer an der Schule Ihres Kindes und den TTK-Kurskoordinator weitergeleitet.</td>
                    </tr>
                    </table>
            </div>
            <div class="auto-style1"></div>
        </div>
    </form>
 </body>
</html>
