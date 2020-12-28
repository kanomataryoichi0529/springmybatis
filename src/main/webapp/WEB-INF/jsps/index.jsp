<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<style type="text/css">
.menu {
	display: block;
	width: 300;;
	padding-top: 10px;
	padding-bottom: 10px;
	text-align: center;
	border: 2px solid;
	border-color: #aaaaaa #444444 #444444 #aaaaaa;
	text-decoration: none;
	font-color: #444444;
}

.menu:hover {
	background: #ffcccc;
}

.menu:link {
	color: #000000;
}

.menu:visited {
	color: #000000;
}
</style>
</head>
<body>
	<h1>Index</h1>
	<div>
		<table>
			<tr><td><a href="list" class="menu">List Employees</a></td></tr>
			<tr><td><a href="registemployee" class="menu">Regist Employee</a></td></tr>
			<tr><td><a href="searchemployee-and" class="menu">And Search Employee</a></td></tr>
			<tr><td><a href="searchemployee-or" class="menu">Or Search Employee</a></td></tr>
		</table>
	
	</div>
</body>
</html>