<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!-- #include virtual="includes/settings.asp" -->
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title><%=ApplicationName%></title>
        <meta name="description" content="<%=ApplicationName%>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="css/site.css">
		
        <script type="text/javascript" src="js/app.js"></script>
    </head>
    <body>
        <div style="margin: 5px">
		<%
			Response.Write "<h1>" & ApplicationName & "</h1>"
			Response.Write "<p>" & Greeting() & "! This is a simple Classic ASP application. If you are reading this, it means Classic ASP is running!</p>"
			Response.Write "<p>This app tests a few basic features such as 'include' files plus local JS and CSS files. It also tests basic classic ASP functions like Now() and custom functions (Greeting)</p>"
			Response.Write "<p>The current Date and Time is: <strong>" & Now & "</strong>.</p>"
			Response.Write "<p>Your IP address is : <strong>" & Request.ServerVariables ("REMOTE_ADDR") & "</strong>.</p>"		
			Response.Write "<p>Server name: <strong>" & Request.ServerVariables ("SERVER_NAME") & "</strong>.</p>"		
			Response.Write "<p><button onclick=""btnHelloWorld()"">Hello World (JavaScript from external file popup test)</button></p>"		
			Response.Write "<p>Here are my server variables:</p>"
		%>
		<div class="servervars">
			<table>
				  <tr>
					   <td><strong>Server Variable Name</strong></td>
					   <td><strong>Server Variable Value</strong></td>
				  </tr>
				  <% for each name in Request.ServerVariables %>
				  <tr>
					   <td><%=name%></td>
					   <td><%=Request.ServerVariables(name)%></td>
				  </tr>
				  <%next%>
			</table>
		</div>
		<p>Simple image test:</p>
		<img src="img/world.jpg" width="409" height="357" alt="World" title="World" />
            </div>
    </body>
</html>
