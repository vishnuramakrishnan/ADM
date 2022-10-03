<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Upload File</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style type="text/css">
body {
	background-image: url(images/bg.jpg);
}
#customerAwareness table tr td table tr td table tr .login div div table tr th .parent {
	font-family: "Browallia New", Chiller, "Clarendon BT", "Colonna MT", Consolas, Constantia, "Cooper Black", "Copperplate Gothic Bold", "Copperplate Gothic Light", CordiaUPC, Courier, "Courier New";
	font-size: medium;
	color: #666;
}
.errors {
	background-color:#FFCCCC;
	border:1px solid #CC0000;
	width:400px;
	margin-bottom:8px;
}
.errors li{ 
	list-style: none; 
}
.welcome {
	background-color:#DDFFDD;
	border:1px solid #009900;
	width:400px;
}
.welcome li{ 
	list-style: none; 
}
</style>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="113" height="72" rowspan="3" align="left" valign="top">&nbsp;</td>
    <td width="12" valign="middle" id="top_1">&nbsp;</td>
    <td width="910" height="24" valign="middle" nowrap class="topNavText" id="top_1">&nbsp;</td>
    <td width="88" rowspan="2" align="right" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td height="38" colspan="2" align="center"><div align="center" id="df">Automatic Generation of the 
      Domain Module from Electronic 
    Textbooks</div></td>
  </tr>
  <tr>
    <td height="10" colspan="3" align="center" class="wlcmname">&nbsp;</td>
  </tr>
</table>
<div id="customerAwareness">
  <table  border="0" cellpadding="0" cellspacing="0"  align="center" >
    <tr>
      <td><table cellpadding="0" cellspacing="0" border="0"  style="margin-top:5px; font-family: 'Lucida Console', Monaco, monospace;">
        <tr>
          <td width="14" class="topleft"></td>
          <td colspan="3" class="phishing_reptop"></td>
          <td width="15" height="15" class="topright"></td>
        </tr>
        <tr>
          <td  colspan="3" class="phishing_repleft"></td>
          <td width="856"  ><table cellspacing="0" cellpadding="0" width="100%" >
            <tr>
              <td><div id="accounts_summary1">
                
                <div id="write1" >
                  <div class="login_tips_1">
                    <div align="center"></div>
                  </div>
                </div>
                <div id="wrong1" >
                  <div class="login_tips_2"></div>
                </div>
                <div id="write1" >
                  <div class="login_tips_1"></div>
                </div>
                <div id="wrong1" style="border-right: #fff 0px solid;">
                  <div class="login_tips_2"></div>
                </div>
                <!-- Jaya -->
                <div style="clear:both"></div>
              </div></td>
            </tr>
            <tr >
              <td width="858" valign="top"><div>
                <p>&nbsp;</p>
                <div align="center">
                  <table width="303" height="111" border="0" cellpadding="5" cellspacing="5">
                    <tr>
                      <th width="343" scope="col">
                     
                      Your file<s:property value="%{fileFileName}"/> is Uploaded to <s:property value="%{category}"/> Category
  <span></span></th>
                      </tr>
                </table>
            </div>
                <p align="center">
                  
              </p>
              </div></td>
            </tr>
          </table></td>
          <td width="15" class="phishing_repbot_rt">&nbsp;</td>
        </tr>
        <tr>
          <td class="botleft"></td>
          <td colspan="3" class="phishing_repbot"><span></span></td>
          <td width="15" height="15" class="botright"></td>
        </tr>
        <tr>
          <td></td>
          <td  colspan="3" align="center" valign="middle">&nbsp;</td>
          <td></td>
        </tr>
      </table></td>
    </tr>
  </table>
</div>
</body>
</html>