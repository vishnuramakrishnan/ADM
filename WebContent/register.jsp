<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Automatic Domain Module - Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="admin.css" />
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
<div id="main_container">
  <div id="header">
    <div id="logo">
      <p>&nbsp;</p>
      <p><img src="images/private-cloud.png" width="140" height="140" /></p>
      <p>&nbsp;</p>
    </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li></li>
      </ul>
    </div> 
   </div>
  <div id="main_content">
  
    <div class="admin_login">
    <s:if test="hasActionErrors()">
                <div class="errors">
                <s:actionerror/>
                </div>                
                </s:if>
                <s:if test="hasActionMessages()">
                <div class="welcome">
                <s:actionmessage/>
                </div>                
                </s:if>
      
       
        
                   <div class="box_title"><span>Create Account</span> </div>
          <s:form action="Register" method="post" cssClass="form">
                               
    <s:textfield name="user.username" key="user.name"></s:textfield>
    <s:password name="user.password" key="user.password"></s:password>
    <s:textfield name="user.email" key="user.email"></s:textfield>
    <s:textfield name="user.mobile" key="user.mobile"></s:textfield>
    		<s:submit value="Create Account"></s:submit>
  			       
          </s:form>
           <s:a href="userlogin"><s:text name="Login"></s:text></s:a>
        </div>
        <div class="bottom_left_box"> </div>
      </div>
    </div>
  
  <!-- end of main_content -->
  <div id="footer">
    <div id="copyright">
      <div style="float:left; padding:3px;"></div>
    </div>
    <ul class="footer_menu">
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      Automatic Generation of the 
      Domain Module from Electronic 
      Textbooks
      </ul>
  </div>
</div>
<!-- end of main_container --></body>
</html>
