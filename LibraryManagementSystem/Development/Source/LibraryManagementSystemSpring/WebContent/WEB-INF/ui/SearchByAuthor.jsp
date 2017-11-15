<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search By Author</title>
<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville"
	rel="stylesheet">
<link href="css/form.css" rel="stylesheet">
</head>
<body>
	<h1 align="center">Welcome to Library Management System</h1>
	<hr>
	<c:choose>
		<c:when test="${input ne null}">
			<div id="form" align="center">
				<form action="authorSearch.htm" method="post">
					<table>
						<tr>
							<td>Enter the Author Name -</td>
							<td><input type="text" name="authorName" required /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" name="submit"
								value="Search"></td>
						</tr>
					</table>
				</form>
			</div>
		</c:when>
		<c:otherwise>
			<div id="form" align="center">
				<form action="bookSearch.htm" method="post">
					<table>
						<tr>
							<td>Enter the Book Name -</td>
							<td><input type="text" name="bookName" required /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" name="submit"
								value="Search"></td>
						</tr>
					</table>
				</form>
			</div>
		</c:otherwise>
	</c:choose>
	<h4>
		<a id="home" href="studentHome.htm">Home</a> <a id="logout" href="">Logout</a>
	</h4>
</body>
</html>