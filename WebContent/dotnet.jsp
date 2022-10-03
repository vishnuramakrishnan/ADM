<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*"%>
    <%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Automatic Generation of Domain Module</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
body {
	background-image: url(images/microsoft-dotnet.jpg);
	background-color: #00FF00;
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
    <p><img src="images/dotnet1.jpg" width="128" height="136" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul style="
    background-color: antiquewhite;
">
       <li><a href="java" style="
    background-color: brown;
">Java/J2EE</a></li>
      	<li><a href="dotnet" style="
    background-color: #2AA56C;
">DOTNET</a></li>
      	<li><a href="php" style="
    background-color: blue;
">PHP</a></li>
      	<li><a href="python" style="
    background-color:rebeccapurple;
">Python</a></li>
      	<li><a href="others" style="
    background-color: green;
">Others</a></li>
        </ul>
    </div>
  </div>
  <div id="main_content">
  <p>&nbsp;</p>
    <p>&nbsp;</p>
      <div class="column1">
      <div class="left_box">
        <div class="center_left_box">
          <div class="box_title"><span>Automatic Domain Module</span></div>
          <div class="form">
            <div class="form_row">
              <p>&nbsp;</p>
              <p> The Domain Module 
                enables either the students to learn by themselves, in the 
                case of exploratory learning systems, or to guide students 
                through the learning process in instructivist TSLSs. An 
                incomplete Domain Module may result in a system that is 
                only able to provide part of the instruction required in the 
              domain</p>
              <p>&nbsp;</p>
            </div>
            <div class="form_row">
              <label class="left"><br />
              </label>
            </div>
            <div class="form_row">
              <p>	Building the Domain Module is a hard task which entails 
                not only selecting the domain topics to be learned, but also 
                defining the pedagogical relationships among the topics that 
                determine how to plan the learning sessions. Textbook 
                authors deal with similar problems while writing their 
                documents, which are structured to facilitate comprehension 
                and learning. Electronic textbooks might be used as the 
                source to build the Domain Module, reproducing how average 
                teachers behave while preparing their subjects: they choose a 
                set of reference books that provide the main didactic 
                resources (DRs) definitions, examples, exercises for the 
                subject, and rely on them for scheduling their lectures. 
                Artificial intelligence techniques provide the means for the 
                semiautomatic construction of the Domain Modules from 
                electronic textbooks which may significantly contribute to 
              reduce the development cost of the Domain Modules.</p>
              <p>&nbsp; </p>
            </div>
            <div class="form_row">
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp; </p>
            </div>
            <div class="form_row">
              <p>&nbsp;</p>
              <p>&nbsp;</p>
            </div>
            <div style="float:right; padding:10px 25px 0 0;"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- end of column one -->
    <div class="column2">
      <div class="main_text_box">
        <h2></h2>
        <p align="justify">
       
      </div>
      <div class="main_text_box">
        
        <p><% 
String file ="D:\\temp\\dotnet";
File f = new File(file);
String [] fileNames = f.list();
File [] fileObjects= f.listFiles();
for (int i = 0; i < fileObjects.length; i++) {
if(!fileObjects[i].isDirectory()){
    String fname = file+fileNames[i];
	%>
	<form name="<%=fileNames[i]%>" method="post" action="filedownload"> 
	<input type="hidden" name="fname" value="<%=fileNames[i]%>" />
	<input type="hidden" name="cname" value="dotnet" />
	<a href="#"><%= fileNames[i] %></a> &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Download"/>
</form>
	<br>
	<%
 }
}
%>
	<img src="images/training-dotnet.png" width="698" height="350" />
  
<!-- end of main_container -->
<div align=center></div></body>
</html>
