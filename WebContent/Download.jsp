<!DOCTYPE html>
<html lang="en">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbconn.Dbcon;" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Multipager Template- Travelic </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="//fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
<style>
body
{
      background-image: linear-gradient(to bottom, rgba(255,0,0,0), rgba(255,0,0,1));
}
table {
    width:100%;
    margin-top: 70px;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px; 
    font-size: 20px;
    color: black;
    font-family: Philosopher; 
    text-align: center;
}
button
{
font-size: 15px;
font-family: Vermin Vibes V; 
margin-left: 21%;
}
</style>
</head>    
<body>

         <div class="navbar navbar-inverse navbar-fixed-top">
    </div>
<table border="1" align="center" class="table"  style="color:black; width:90%; text-align:center; font-family: initial; 
 border-color:black; background-color:#ffffff78; border-collapse: unset;">
 
  <tr style="font-size: 19px; " >
   
<th style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 19px;">FILENAME</th>
<th style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 19px;">FILEKEY</th>
<th style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 19px;">STATUS</th>
  
  </tr>
	
       <%
Connection con=Dbcon.CreateConnection();

PreparedStatement ps=con.prepareStatement("SELECT * FROM `blockchain`.`fileresponse` WHERE status='Accept'");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
	String filename=rs.getString(1);
	String filekey=rs.getString(3);
	
	%>		
		
	<tr>
<td align="left"><%=filename%></td>
<td align="left"><%=filekey%></td>
<td style="text-align: center;"><a href="Download?filename=<%=rs.getString(1)%>&&key=<%=rs.getString(3)%>"><button>DOWNLOAD</button></a></td>
     </tr>
<%} %>
</table>
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap.min.js"></script>  
    <script src="assets/plugins/jquery.isotope.min.js"></script>
    <script src="assets/plugins/jquery.prettyPhoto.js"></script>    
    <script src="assets/js/custom.js"></script>					
</body>
</html>