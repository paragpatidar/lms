<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link
	href="https://fonts.googleapis.com/css?family=Inconsolata|Indie+Flower|Open+Sans|Oswald|Spectral+SC|Titillium+Web|Vollkorn+SC"
	rel="stylesheet">
<link rel="stylesheet" href="../css/form.css">
<!-- <style>
#formIndex {
	border-radius: 25px;
	border: 2px solid #73AD21;
	padding: 20px;
	margin-right: 20%;
	margin-left: 30%;
}

* {
	font-family: 'Vollkorn SC', serif;
	font-family: 'Oswald', sans-serif;
	font-family: 'Spectral SC', serif;
	font-family: 'Titillium Web', sans-serif;
	font-family: 'Indie Flower', cursive;
}

th, td {
	padding: 8px;
	border-bottom: 1px solid #ddd;
}
</style> -->
</head>
<body>
	<h1 align="center">Welcome to Library Management System</h1>
	<hr>
	<br>
	<div id="formIndex" align="center">
		<form action="login.htm" method="post">
			<table>
				<tr>
					<td>Username</td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit"
						name="submit" value="Login"></td>
				</tr>
			</table>
		</form>
		<h4 align="right">
			<a href="signUp.htm">New User!!</a>
		</h4>
	</div>
	<h3>${message }</h3>
</body>
</html>