<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web.Mail" %>
<%@ Import Namespace="System.Net" %> 
<%@ Import Namespace="System.Web.UI.HtmlControls" %>  
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>  
          <script language="c#" runat="server">
public void Page_Load(object sender, EventArgs e)
{
  
}
protected void btnSend_Click(object sender, EventArgs e)
{
    string fromAddress = "chetan@kanaiyatravels.com";// Gmail Address from where you send the mail
    const string fromPassword = "harbhole1_969";//Password of your gmail address    
    string toAddress = "kanaiyatravels@gmail.com";
    string subject1 = "Online Contact from Website";
    string body = "From: " + name.Value + "\n";
    body += "From: " + ri_form.Value + "\n";
    body += "To: " + ri_to.Value + "\n";
	body += "Date: " + ri_day.Value + "\n";
	body = "Month: " + ri_month.Value + "\n";
    body += "Year: " + ri_year.Value + "\n";
    body += "Class: " + ri_class.Value + "\n";
	body += "Train no and List: " + ri_train_no_name.Value + "\n";
	body += "Bording: " + ri_station.Value + "\n";
    body += "Ticket Type: " + ri_ticket_type.Value + "\n";
	body += "Reservation Upto: " + ri_reservation_upto.Value + "\n";
	body = "Quota: " + ri_quota.Value + "\n";
    body += "Prefered Time: " + ri_time.Value + "\n";
    body += "Name 1: " + pd_name_01.Value + "\n";
	body += "Age 1: " + pd_age_01.Value + "\n";
	body += "Sex 1: " + pd_sex_01.Value + "\n";
    body += "Berth 1: " + pd_bp_01.Value + "\n";
	body += "Senior Citisen 1: " + pd_sc_01.Value + "\n";
	body += "Name 2: " + pd_name_02.Value + "\n";
	body += "Age 2: " + pd_age_02.Value + "\n";
	body += "Sex 2: " + pd_sex_02.Value + "\n";
    body += "Berth 2: " + pd_bp_02.Value + "\n";
	body += "Senior Citisen 2: " + pd_sc_02.Value + "\n";
	body += "Name 3: " + pd_name_03.Value + "\n";
	body += "Age 3: " + pd_age_03.Value + "\n";
	body += "Sex 3: " + pd_sex_03.Value + "\n";
    body += "Berth 3: " + pd_bp_03.Value + "\n";
	body += "Senior Citisen 3: " + pd_sc_03.Value + "\n";
	body += "Name 4: " + pd_name_04.Value + "\n";
	body += "Age 4: " + pd_age_04.Value + "\n";
	body += "Sex 4: " + pd_sex_04.Value + "\n";
    body += "Berth 4: " + pd_bp_04.Value + "\n";
	body += "Senior Citisen 4: " + pd_sc_04.Value + "\n";
	body += "Name 5: " + pd_name_05.Value + "\n";
	body += "Age 5: " + pd_age_05.Value + "\n";
	body += "Sex 5: " + pd_sex_05.Value + "\n";
    body += "Berth 5: " + pd_bp_05.Value + "\n";
	body += "Senior Citisen 5: " + pd_sc_05.Value + "\n";
	body += "Name 6: " + pd_name_06.Value + "\n";
	body += "Age 6: " + pd_age_06.Value + "\n";
	body += "Sex 6: " + pd_sex_06.Value + "\n";
    body += "Berth 6: " + pd_bp_06.Value + "\n";
	body += "Senior Citisen 6: " + select7.Value + "\n";
	body = "Onword From: " + rj_from.Value + "\n";
    body += "Onword To: " + rj_to.Value + "\n";
    body += "Onword date: " + rj_day.Value + "\n";
	body += "Onword Month: " + rj_month.Value + "\n";
	body += "Onword Year: " + rj_year.Value + "\n";
    body += "Onword Class: " + 17.Value + "\n";
	body += "Onword train Name: " + rj_train_name.Value + "\n";
	body = "Onword Bording: " + rj_station.Value + "\n";
    body += "Onword Ticket Type: " + rj_ticket_type.Value + "\n";
    body += "Onword Reservation Upto: " + rj_reservation_upto.Value + "\n";
	body += "Onword Quota: " + rj_quota.Value + "\n";
	body += "Onword Prefered Time: " + rj_time.Value + "\n";
	body += "Email: " + cd_email.Value + "\n";
	body = "Mobile No: " + cd_no.Value + "\n";
    body += "Address: " + cd_address.Value + "\n";
    body += "Spl Note: " + cd_note.Value + "\n";
	
    var smtp = new System.Net.Mail.SmtpClient();
    {
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
        smtp.Timeout = 20000;
    }
    smtp.Send(fromAddress, toAddress, subject1, body);
    lblMsgSend.Text = "Thank You For Contactting";
    lblMsgSend.Visible = true;
   name.Value = "";
   ri_form.Value = "";
    ri_to.Value = "";
    ri_day.Value = "";
	ri_month.Value = "";
	ri_years.Value = "";
	ri_class.Value ="";
    ri_train_no_name.Value ="";
	ri_station.Value = "";
    ri_ticket_type.Value = "";
	ri_reservation_upto.Value = "";
	ri_quota.Value = "";
	ri_time.Value ="";
	ri_pd_name_01.Value ="";
	pd_age_01.Value = "";
    pd_sex_01.Value = "";
	pd_bp_01.Value = "";
	pd_sc_01.Value = "";
	pd_name_02.Value ="";
	pd_age_02.Value = "";
    pd_sex_02.Value = "";
	pd_bp_02.Value = "";
	pd_sc_02.Value = "";
	pd_name_03.Value ="";
	pd_age_03.Value = "";
    pd_sex_03.Value = "";
	pd_bp_03.Value = "";
	pd_sc_03.Value = "";
	pd_name_04.Value ="";
	pd_age_04.Value = "";
    pd_sex_04.Value = "";
	pd_bp_04.Value = "";
	pd_sc_04.Value = "";
	pd_name_05.Value ="";
	pd_age_05.Value = "";
    pd_sex_05.Value = "";
	pd_bp_05.Value = "";
	pd_sc_05.Value = "";
	pd_name_06.Value ="";
	pd_age_06.Value = "";
    pd_sex_06.Value = "";
	pd_bp_06.Value = "";
	select7.Value = "";
	rj_from.Value ="";
	rj_to.Value = "";
    rj_day.Value = "";
	rj_month.Value = "";
	rj_year.Value = "";
	17.Value = "";
	rj_train_name.Value = "";
	rj_station.Value = "";
	rj_ticket_type.Value = "";
	rj_reservation_upto.Value = "";
	rj_quota.Value = "";
	rj_time.Value = "";
	rj_time.Value = "";
	cd_no.Value = "";
	cd_address.Value = "";
	cd_note.Value = "";

}
protected void btnReset_Click(object sender, EventArgs e)
{
     
   name.Value = ""; 
   ri_form.Value = "";
    ri_to.Value = "";
    ri_day.Value = "";
	ri_month.Value = "";
	ri_years.Value = "";
	ri_class.Value ="";
    ri_train_no_name.Value ="";
	ri_station.Value = "";
    ri_ticket_type.Value = "";
	ri_reservation_upto.Value = "";
	ri_quota.Value = "";
	ri_time.Value ="";
	ri_pd_name_01.Value ="";
	pd_age_01.Value = "";
    pd_sex_01.Value = "";
	pd_bp_01.Value = "";
	pd_sc_01.Value = "";
	pd_name_02.Value ="";
	pd_age_02.Value = "";
    pd_sex_02.Value = "";
	pd_bp_02.Value = "";
	pd_sc_02.Value = "";
	pd_name_03.Value ="";
	pd_age_03.Value = "";
    pd_sex_03.Value = "";
	pd_bp_03.Value = "";
	pd_sc_03.Value = "";
	pd_name_04.Value ="";
	pd_age_04.Value = "";
    pd_sex_04.Value = "";
	pd_bp_04.Value = "";
	pd_sc_04.Value = "";
	pd_name_05.Value ="";
	pd_age_05.Value = "";
    pd_sex_05.Value = "";
	pd_bp_05.Value = "";
	pd_sc_05.Value = "";
	pd_name_06.Value ="";
	pd_age_06.Value = "";
    pd_sex_06.Value = "";
	pd_bp_06.Value = "";
	pd_sc_06.Value = "";
	rj_from.Value ="";
	rj_to.Value = "";
    rj_day.Value = "";
	rj_month.Value = "";
	rj_year.Value = "";
	17.Value = "";
	rj_train_name.Value = "";
	rj_station.Value = "";
	rj_ticket_type.Value = "";
	rj_reservation_upto.Value = "";
	rj_quota.Value = "";
	rj_time.Value = "";
	rj_time.Value = "";
	cd_no.Value = "";
	cd_address.Value = "";
	cd_note.Value = "";

}
</script>
          <style type="text/css">
<!--
.style4 {font-weight: bold}
.style5 {
	color: #FFFFFF;
	font: bold;
}
.style7 {
	font-size: 18px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
          </style>
<script>$(window).load(function() {
    $('#loading').hide();
  });</script>
<script type="text/javascript">
$(document).ready(function () {
    //Disable full page
    $('body').bind('cut copy paste', function (e) {
        e.preventDefault();
    });
    
    //Disable part of page
    $('#id').bind('cut copy paste', function (e) {
        e.preventDefault();
    });
});
</script>
</head><body>

    <center>
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" valign="top"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
        <tr>
          
        </tr>
        <tr>
          <td><table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#be1615">
            
          </table></td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#ffeacd">
            
          </table></td>
        </tr>
        <tr>
          <td><table width="923PX" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1000" height="200">
                <param name="movie" value="flash/sub-banner.swf" />
                <param name="quality" value="high" />
                <param name="wmode" value="transparent" />
                <embed src="flash/sub-banner.swf" width="1000" height="200" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
              </object></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><table width="923PX" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="40" align="left" valign="middle" class="main-text" id="table-border-bottom">railway ticketing</td>
            </tr>
            <tr>
              <td align="left" valign="top"><p>To cater to the various economical sections of the society, we offer railway ticket reservation to our customers and charge nominal charges for these services. No matter in which part of the country you want to travel, we will book tickets for you keeping in mind the budgetary constraints.</p>
                <p> We are also authorized Rail Traveler Service Agent, approved by Western Railways Govt. of India.</p>
                <p> You will get updated train schedules, as well as your booking details on e-mail as well as on mobile by SMS or in printed format as required by you at the time of booking as well as after ticketing.</p>
                <p> You can also book International Railway Ticketing with us and for the same, please contact us and give your requirements now. </p>                </td>
            </tr>
            <tr>
              <td align="center" valign="top">
			  <form action="http://www.poojatravels.in/railway-ticketing-send.php" method="post" enctype="multipart/form-data" name="railway-ticketing-send" target="_parent" id="railway-ticketing-send">
			    <table width="98%" border="0" cellpadding="3" cellspacing="3" class="table-shadow">
                  <tr>
                    <td align="left" valign="middle" bgcolor="#ffeacd" class="main-text-003">Rail Information</td>
                    </tr>
                  <tr>
                    <td align="left" valign="middle"><table width="100%" border="0" cellpadding="3" cellspacing="3" class="Image">
                      <tr>
                        <td width="16%" align="left" valign="middle">*Full Name </td>
                        <td width="33%" align="left" valign="middle"><input name="name" runat="server" type="text" id="name" size="40" required="" /></td>
                        <td align="left" valign="middle">&nbsp;</td>
                        <td align="left" valign="middle">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="16%" align="left" valign="middle">*From</td>
                        <td width="33%" align="left" valign="middle"><input name="ri_form" runat="server" type="text" id="ri_form" size="40" required="" /></td>
                        <td width="17%" align="left" valign="middle">*To</td>
                        <td width="34%" align="left" valign="middle"><input name="ri_to" runat="server" type="text" id="ri_to" size="40" required="" /></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Date</td>
                        <td><select name='ri_day' runat="server"><option value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option><option value=6>6</option><option value=7>7</option><option value=8>8</option><option value=9>9</option><option value=10>10</option><option value=11>11</option><option value=12>12</option><option value=13>13</option><option value=14>14</option><option value=15>15</option><option value=16>16</option><option value=17>17</option><option value=18>18</option><option value=19>19</option><option value=20>20</option><option value=21>21</option><option value=22>22</option><option value=23>23</option><option value=24>24</option><option value=25>25</option><option value=26>26</option><option value=27>27</option><option value=28>28</option><option value=29>29</option><option value=30>30</option><option value=31>31</option></select>                          &nbsp;
                          <select name='ri_month' runat="server"><option value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option><option value=6>6</option><option value=7>7</option><option value=8>8</option><option value=9>9</option><option value=10>10</option><option value=11>11</option><option value=12>12</option></select>                          &nbsp;
                          <select name='ri_year' runat="server"><option value=2013>2013</option><option value=2014>2014</option><option value=2015>2015</option><option value=2016>2016</option><option value=2017>2017</option><option value=2018>2018</option><option value=2019>2019</option><option value=2020>2020</option><option value=2021>2021</option><option value=2022>2022</option><option value=2023>2023</option><option value=2024>2024</option><option value=2025>2025</option><option value=2026>2026</option><option value=2027>2027</option><option value=2028>2028</option><option value=2029>2029</option><option value=2030>2030</option><option value=2031>2031</option><option value=2032>2032</option><option value=2033>2033</option><option value=2034>2034</option><option value=2035>2035</option><option value=2036>2036</option><option value=2037>2037</option><option value=2038>2038</option><option value=2039>2039</option><option value=2040>2040</option><option value=2041>2041</option><option value=2042>2042</option><option value=2043>2043</option><option value=2044>2044</option><option value=2045>2045</option><option value=2046>2046</option><option value=2047>2047</option><option value=2048>2048</option><option value=2049>2049</option><option value=2050>2050</option><option value=2051>2051</option><option value=2052>2052</option><option value=2053>2053</option><option value=2054>2054</option><option value=2055>2055</option><option value=2056>2056</option><option value=2057>2057</option><option value=2058>2058</option><option value=2059>2059</option><option value=2060>2060</option><option value=2061>2061</option><option value=2062>2062</option><option value=2063>2063</option><option value=2064>2064</option><option value=2065>2065</option><option value=2066>2066</option><option value=2067>2067</option><option value=2068>2068</option><option value=2069>2069</option><option value=2070>2070</option><option value=2071>2071</option><option value=2072>2072</option><option value=2073>2073</option><option value=2074>2074</option><option value=2075>2075</option><option value=2076>2076</option><option value=2077>2077</option><option value=2078>2078</option><option value=2079>2079</option><option value=2080>2080</option><option value=2081>2081</option><option value=2082>2082</option><option value=2083>2083</option><option value=2084>2084</option><option value=2085>2085</option><option value=2086>2086</option><option value=2087>2087</option><option value=2088>2088</option><option value=2089>2089</option><option value=2090>2090</option><option value=2091>2091</option><option value=2092>2092</option><option value=2093>2093</option><option value=2094>2094</option><option value=2095>2095</option><option value=2096>2096</option><option value=2097>2097</option><option value=2098>2098</option><option value=2099>2099</option></select></td>
                        <td align="left" valign="middle">*Class</td>
                        <td align="left" valign="middle"><label>
                          <select name="ri_class" id="ri_class" runat="server">
                            <option value="Fiest AC">Fiest AC</option>
                            <option value="Second AC">Second AC</option>
                            <option value="Third AC">Third AC</option>
                            <option value="AC Chair Car">AC Chair Car</option>
                            <option value="First Class">First Class</option>
                            <option value="Sleeper Class">Sleeper Class</option>
                            <option value="Second Seating">Second Seating</option>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Train No./Name</td>
                        <td align="left" valign="middle"><input name="ri_train_no_name" type="text" id="ri_train_no_name" runat="server" size="40" required="" /></td>
                        <td align="left" valign="middle">*Boarding Station</td>
                        <td align="left" valign="middle"><input name="ri_station" type="text" id="ri_station" runat="server" size="40" required="" /></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Ticket Type</td>
                        <td align="left" valign="middle"><select name="ri_ticket_type" id="ri_ticket_type" runat="server">
                          <option value="e-Ticket">e-Ticket</option>
                          <option value="i-Ticket">i-Ticket</option>
                                                </select></td>
                        <td align="left" valign="middle">Reservation Upto</td>
                        <td align="left" valign="middle"><input name="ri_reservation_upto" type="text" id="ri_reservation_upto" runat="server" size="40" /></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Quota</td>
                        <td align="left" valign="middle"><select name="ri_quota" id="ri_quota" runat="server">
                          <option value=" General"> General</option>
                          <option value="Tatkal">Tatkal</option>
                                                </select></td>
                        <td align="left" valign="middle">Prefered Time </td>
                        <td align="left" valign="middle"><input name="ri_time" type="text" id="ri_time" runat="server" size="40" /></td>
                      </tr>
                    </table></td>
                    </tr>
                  <tr>
                    <td align="left" valign="middle" bgcolor="#ffeacd" class="main-text-003">Passangers Details</td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><table width="100%" border="0" cellpadding="3" cellspacing="3" class="Image">
                      <tr>
                        <td width="6%" align="left" valign="middle"><strong>SNo.</strong></td>
                        <td width="32%" align="left" valign="middle"><strong>Name</strong></td>
                        <td width="17%" align="left" valign="middle"><strong>Age</strong></td>
                        <td width="15%" align="left" valign="middle"><strong>Sex</strong></td>
                        <td width="16%" align="left" valign="middle"><strong>Berth Preference</strong></td>
                        <td width="14%" align="left" valign="middle"><strong>Senior Citizen</strong></td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">01</td>
                        <td align="left" valign="middle"><input name="pd_name_01" type="text" id="pd_name_01" runat="server" size="43" /></td>
                        <td align="left" valign="middle"><input name="pd_age_01" type="text" id="pd_age_01" runat="server" /></td>
                        <td align="left" valign="middle"><select name="pd_sex_01" id="pd_sex_01" runat="server">
                          <option value="000" selected="selected">Select Gender</option>
                          <option value="Male">Male</option>
                          <option value="Female">Female</option>
                                                                        </select></td>
                        <td align="left" valign="middle"><select name="pd_bp_01" id="pd_bp_01" runat="server">
                          <option value="000" selected="selected">Choose Berth</option>
                          <option value="Male">Male</option>
                          <option value="Middle">Middle</option>
                          <option value="Upper">Upper</option>
                          <option value="Window Seat">Window Seat</option>
                          <option value="Isle Seat">Isle Seat</option>
                          <option value="Side Lower">Side Lower</option>
                          <option value="SIde Upper">SIde Upper</option>
                                                </select></td>
                        <td align="left" valign="middle"><select name="pd_sc_01" id="pd_sc_01" runat="server">
                          <option value="000">Choose </option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                                                </select></td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">02</td>
                        <td align="left" valign="middle"><input name="pd_name_02" type="text" id="pd_name_02" runat="server"size="43" /></td>
                        <td align="left" valign="middle"><input name="pd_age_02" type="text" id="pd_age_02" runat="server"/></td>
                        <td align="left" valign="middle"><select name="pd_sex_02" id="pd_sex_02" runat="server">
                            <option value="000" selected="selected">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_bp_02" id="pd_bp_02" runat="server">
                            <option value="000">Choose Berth</option>
                            <option value="Male">Male</option>
                            <option value="Middle">Middle</option>
                            <option value="Upper">Upper</option>
                            <option value="Window Seat">Window Seat</option>
                            <option value="Isle Seat">Isle Seat</option>
                            <option value="Side Lower">Side Lower</option>
                            <option value="SIde Upper">SIde Upper</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_sc_02" id="pd_sc_02" runat="server">
                          <option value="000">Choose </option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">03</td>
                        <td align="left" valign="middle"><input name="pd_name_03" type="text" id="pd_name_03" runat="server" size="43" /></td>
                        <td align="left" valign="middle"><input name="pd_age_03" type="text" id="pd_age_03" runat="server"/></td>
                        <td align="left" valign="middle"><select name="pd_sex_03" id="pd_sex_03" runat="server">
                            <option value="000" selected="selected">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_bp_03" id="pd_bp_03" runat="server">
                            <option value="000">Choose Berth</option>
                            <option value="Male">Male</option>
                            <option value="Middle">Middle</option>
                            <option value="Upper">Upper</option>
                            <option value="Window Seat">Window Seat</option>
                            <option value="Isle Seat">Isle Seat</option>
                            <option value="Side Lower">Side Lower</option>
                            <option value="SIde Upper">SIde Upper</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_sc_03" id="pd_sc_03" runat="server">
                          <option value="000">Choose </option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">04</td>
                        <td align="left" valign="middle"><input name="pd_name_04" type="text" id="pd_name_04" runat="server" size="43" /></td>
                        <td align="left" valign="middle"><input name="pd_age_04" type="text" id="pd_age_04" runat="server"/></td>
                        <td align="left" valign="middle"><select name="pd_sex_04" id="pd_sex_04" runat="server">
                            <option value="000" selected="selected">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_bp_04" id="pd_bp_04" runat="server">
                            <option value="000">Choose Berth</option>
                            <option value="Male">Male</option>
                            <option value="Middle">Middle</option>
                            <option value="Upper">Upper</option>
                            <option value="Window Seat">Window Seat</option>
                            <option value="Isle Seat">Isle Seat</option>
                            <option value="Side Lower">Side Lower</option>
                            <option value="SIde Upper">SIde Upper</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_sc_04" id="pd_sc_04" runat="server">
                          <option value="000">Choose </option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">05</td>
                        <td align="left" valign="middle"><input name="pd_name_05" type="text" id="pd_name_05" runat="server" size="43" /></td>
                        <td align="left" valign="middle"><input name="pd_age_05" type="text" id="pd_age_05" runat="server"/></td>
                        <td align="left" valign="middle"><select name="pd_sex_05" id="pd_sex_05" runat="server">
                            <option value="000" selected="selected">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_bp_05" id="pd_bp_05" runat="server">
                            <option value="000">Choose Berth</option>
                            <option value="Male">Male</option>
                            <option value="Middle">Middle</option>
                            <option value="Upper">Upper</option>
                            <option value="Window Seat">Window Seat</option>
                            <option value="Isle Seat">Isle Seat</option>
                            <option value="Side Lower">Side Lower</option>
                            <option value="SIde Upper">SIde Upper</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_sc_05" id="pd_sc_05" runat="server">
                          <option value="000">Choose </option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">06</td>
                        <td align="left" valign="middle"><input name="pd_name_06" type="text" id="pd_name_06" runat="server"size="43" /></td>
                        <td align="left" valign="middle"><input name="pd_age_06" type="text" id="pd_age_06" runat="server"/></td>
                        <td align="left" valign="middle"><select name="pd_sex_06" id="pd_sex_06" runat="server">
                            <option value="000" selected="selected">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_bp_06" id="pd_bp_06" runat="server">
                            <option value="000">Choose Berth</option>
                            <option value="Male">Male</option>
                            <option value="Middle">Middle</option>
                            <option value="Upper">Upper</option>
                            <option value="Window Seat">Window Seat</option>
                            <option value="Isle Seat">Isle Seat</option>
                            <option value="Side Lower">Side Lower</option>
                            <option value="SIde Upper">SIde Upper</option>
                        </select></td>
                        <td align="left" valign="middle"><select name="pd_sc_06" id="select7" runat="server">
                          <option value="000">Choose </option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">&nbsp;</td>
                        <td align="left" valign="middle">&nbsp;</td>
                        <td align="left" valign="middle">&nbsp;</td>
                        <td align="left" valign="middle">&nbsp;</td>
                        <td align="left" valign="middle">&nbsp;</td>
                        <td align="center" valign="middle">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle" bgcolor="#ffeacd" class="main-text-003">Onward / Return Jurney Details</td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><table width="100%" border="0" cellpadding="3" cellspacing="3" class="Image">
                      <tr>
                        <td width="16%" align="left" valign="middle">*From</td>
                        <td width="33%" align="left" valign="middle"><input name="rj_from" type="text" id="rj_from" runat="server" size="40" required="" /></td>
                        <td width="17%" align="left" valign="middle">*To</td>
                        <td width="34%" align="left" valign="middle"><input name="rj_to" type="text" id="rj_to" runat="server" size="40" required="" /></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Date</td>
                        <td><select name='rj_day' runat="server"><option value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option><option value=6>6</option><option value=7>7</option><option value=8>8</option><option value=9>9</option><option value=10>10</option><option value=11>11</option><option value=12>12</option><option value=13>13</option><option value=14>14</option><option value=15>15</option><option value=16>16</option><option value=17>17</option><option value=18>18</option><option value=19>19</option><option value=20>20</option><option value=21>21</option><option value=22>22</option><option value=23>23</option><option value=24>24</option><option value=25>25</option><option value=26>26</option><option value=27>27</option><option value=28>28</option><option value=29>29</option><option value=30>30</option><option value=31>31</option></select>                          &nbsp;
                          <select name='rj_month' runat="server"><option value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option><option value=6>6</option><option value=7>7</option><option value=8>8</option><option value=9>9</option><option value=10>10</option><option value=11>11</option><option value=12>12</option></select>                          &nbsp;
                          <select name='rj_year' runat="server"><option value=2013>2013</option><option value=2014>2014</option><option value=2015>2015</option><option value=2016>2016</option><option value=2017>2017</option><option value=2018>2018</option><option value=2019>2019</option><option value=2020>2020</option><option value=2021>2021</option><option value=2022>2022</option><option value=2023>2023</option><option value=2024>2024</option><option value=2025>2025</option><option value=2026>2026</option><option value=2027>2027</option><option value=2028>2028</option><option value=2029>2029</option><option value=2030>2030</option><option value=2031>2031</option><option value=2032>2032</option><option value=2033>2033</option><option value=2034>2034</option><option value=2035>2035</option><option value=2036>2036</option><option value=2037>2037</option><option value=2038>2038</option><option value=2039>2039</option><option value=2040>2040</option><option value=2041>2041</option><option value=2042>2042</option><option value=2043>2043</option><option value=2044>2044</option><option value=2045>2045</option><option value=2046>2046</option><option value=2047>2047</option><option value=2048>2048</option><option value=2049>2049</option><option value=2050>2050</option><option value=2051>2051</option><option value=2052>2052</option><option value=2053>2053</option><option value=2054>2054</option><option value=2055>2055</option><option value=2056>2056</option><option value=2057>2057</option><option value=2058>2058</option><option value=2059>2059</option><option value=2060>2060</option><option value=2061>2061</option><option value=2062>2062</option><option value=2063>2063</option><option value=2064>2064</option><option value=2065>2065</option><option value=2066>2066</option><option value=2067>2067</option><option value=2068>2068</option><option value=2069>2069</option><option value=2070>2070</option><option value=2071>2071</option><option value=2072>2072</option><option value=2073>2073</option><option value=2074>2074</option><option value=2075>2075</option><option value=2076>2076</option><option value=2077>2077</option><option value=2078>2078</option><option value=2079>2079</option><option value=2080>2080</option><option value=2081>2081</option><option value=2082>2082</option><option value=2083>2083</option><option value=2084>2084</option><option value=2085>2085</option><option value=2086>2086</option><option value=2087>2087</option><option value=2088>2088</option><option value=2089>2089</option><option value=2090>2090</option><option value=2091>2091</option><option value=2092>2092</option><option value=2093>2093</option><option value=2094>2094</option><option value=2095>2095</option><option value=2096>2096</option><option value=2097>2097</option><option value=2098>2098</option><option value=2099>2099</option></select></td>
                        <td align="left" valign="middle">*Class</td>
                        <td align="left" valign="middle"><label>
                          <select name="rj_class" id="17" runat="server">
                            <option value="Fiest AC">Fiest AC</option>
                            <option value="Second AC">Second AC</option>
                            <option value="Third AC">Third AC</option>
                            <option value="AC Chair Car">AC Chair Car</option>
                            <option value="First Class">First Class</option>
                            <option value="Sleeper Class">Sleeper Class</option>
                            <option value="Second Seating">Second Seating</option>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Train No./Name</td>
                        <td align="left" valign="middle"><input name="rj_train_name" type="text" id="rj_train_name" runat="server" size="40" required="" /></td>
                        <td align="left" valign="middle">*Boarding Station</td>
                        <td align="left" valign="middle"><input name="rj_station" type="text" id="rj_station" runat="server" size="40" required="" /></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Ticket Type</td>
                        <td align="left" valign="middle"><select name="rj_ticket_type" id="rj_ticket_type" runat="server">
                            <option value="e-Ticket">e-Ticket</option>
                            <option value="i-Ticket">i-Ticket</option>
                        </select></td>
                        <td align="left" valign="middle">Reservation Upto</td>
                        <td align="left" valign="middle"><input name="rj_reservation_upto" type="text" id="rj_reservation_upto" runat="server" size="40" /></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle">*Quota</td>
                        <td align="left" valign="middle"><select name="rj_quota" id="select6" runat="server">
                            <option value=" General"> General</option>
                            <option value="Tatkal">Tatkal</option>
                        </select></td>
                        <td align="left" valign="middle">Prefered Time </td>
                        <td align="left" valign="middle"><input name="rj_time" type="text" id="rj_time" runat="server" size="40" /></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle" bgcolor="#ffeacd" class="main-text-003">Contact Details</td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><table width="100%" border="0" cellpadding="3" cellspacing="3" class="Image">
                      <tr>
                        <td width="16%">* Email</td>
                        <td width="33%"><input name="cd_email" type="text" id="cd_email" runat="server" size="40" required="" /></td>
                        <td width="17%">*&nbsp;Contact No.</td>
                        <td width="34%"><input name="cd_no" type="text" id="cd_no" runat="server" size="40" required="" /></td>
                      </tr>
                      <tr>
                        <td>Resi / Office Address</td>
                        <td><textarea name="cd_address" cols="31" rows="4" id="cd_address" runat="server"></textarea></td>
                        <td>Special Note : If any  comment for your reservation.</td>
                        <td><textarea name="cd_note" cols="31" rows="4" id="cd_note" runat="server"></textarea></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td class="buttons" align="center"><br>
        <asp:ImageButton ID="btnSend"  ImageUrl="Image\button\SendNow.gif"  runat="server" Text="Send message" OnClick="btnSend_Click" ValidationGroup="save" />&nbsp; &nbsp;
            <asp:ImageButton ID="btnReset"  ImageUrl="Image\button\Reset.gif"  runat="server" Text="Reset" OnClick="btnReset_Click" ValidationGroup="save" />
            <br></td>
                  </tr>
                </table>
			  </form>			  </td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td></td>
        </tr>
      </table></td>
    </tr>
  </table>
</center>
</body>
</html>
