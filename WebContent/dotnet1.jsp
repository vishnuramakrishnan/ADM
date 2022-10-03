<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	background-image: url(images/bg.jpg);
}
#customerAwareness table tr td table tr td table tr .login div div table tr th .parent {
	font-family: "Browallia New", Chiller, "Clarendon BT", "Colonna MT", Consolas, Constantia, "Cooper Black", "Copperplate Gothic Bold", "Copperplate Gothic Light", CordiaUPC, Courier, "Courier New";
	font-size: medium;
	color: #666;
}
.errors {
	background-color:#FFC1CC;
	border:1px solid #CC0000;
	width:400px;
	margin-bottom:8px;
}
.errors li{ 
	list-style: none; 
}
.welcome {
	background-color:#DDEEDD;
	border:1px solid #009900;
	width:400px;
}
.welcome li{ 
	list-style: none; 
}
</style>
</head>
<body bgcolor="images/Back.jpg">
<div id="main_container">
  <div id="header">
    <div id="logo">
    <p><img src="images/private-cloud.png" width="128" height="136" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
       
      		<li><a href="java">Java/J2EE</a></li>
      	<li><a href="dotnet">DOTNET</a></li>
      	<li><a href="php">PHP</a></li>
      	<li><a href="python">Python</a></li>
      	<li><a href="others">Others</a></li>
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
%></p>
      </div>
    </div>
    <!-- end of column two -->
    <div class="column3">
      <div class="small_title">Latest Approaches</div>
      <div class="offer_box"> <a href="#"><img src="images/dotnet1.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>Approach</span>
          <p class="offer">The approach here presented uses artificial intelligence 
            methods and techniques such as natural language processing 
          (NLP) and heuristic reasoning to achieve the among them are identified and represented in the 
          LDO.</p>
          <div class="more"></div>
        </div>
      </div>
      <div class="offer_box"> <a href="#"><img src="images/dotnet2.png" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>Semantic Approach</span>
          <p class="offer">In this semiautomatic approach, the outcome of gathering 
            the LDO and the LOs can be supervised by teachers and 
            instructional designers both individually and collaboratively 
          using Elkar-DOM</p>
      </div></div>
    </div>
    <!-- end of column three -->
    <div class="column4">
      <div class="title">Data Mining</div>
      <div class="offer_box_wide"> <a href="#"><img src="images/dotnet3.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>Pre-Processing</span>
          <p class="offer">the system prepares the electronic document 
            and gathers a standardized representation of it, to later run 
          the knowledge acquisition processes.</p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="#"><img src="images/dotnet4.png" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>Outline Analysis</span>
          <p class="offer">Document outlines are the main sources of information for 
            acquiring the LDO in a semiautomatic way as they are 
            usually well structured and contain the main topics of the<br />
          domain.</p>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="#"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>PDF</span>
          <p class="offer">As 
            electronic documents are available in PDF 
            formats, a preprocess is carried 
          out first to prepare the document.</p>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="#"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>Gathering the LDO</span>
          <p class="offer">Ontology learning, i.e., gathering domain ontologies from 
            different resources in an automatic or semiautomatic way 
          has been addressed in many works</p>
          .
        </div>
      </div>
    </div>
    <!-- end of column four -->
  </div>
  <!-- end of main_content -->
  <div id="footer">
    <div id="copyright">
      <div style="float:left; padding:3px;"></div>
    </div>
    <ul class="footer_menu">
      Automatic Generation of the Domain Module from Electronic Textbooks
    </ul>
  </div>
</div>
<!-- end of main_container -->
<div align=center></div></body>
</html>
