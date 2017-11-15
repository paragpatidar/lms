<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add/Update Book</title>
<link href="https://fonts.googleapis.com/css?family=Slabo+27px"
	rel="stylesheet">
<link href="css/form.css" rel="stylesheet">
</head>
<body>
	<h1 align="center">Welcome to Library Management System - Add Book</h1>
	<hr>
	<h4 align="right">Welcome ${userName}</h4>
	<c:if test="${bookId eq null }">
		<div id="formIndex">
			<form action="checkBook.htm" method="post">
				Enter book Id:<input type="text" name="bookId" /> <input
					type="submit" value="Add/update" />
			</form>
		</div>
	</c:if>
	<c:if test="${book ne null}">
		<div id="formIndex">
			<form:form id="bookForm" action="onAdd.htm" modelAttribute="book"
				method="post">
				<table align="center">
					<tr>
						<td><form:label path="bookId">Book Id:</form:label>
						<td><form:input path="bookId" pattern="[0-9]{4}"
								title="Book Id should be of 4 digits (1111 or 9999)"
								value="${bookId}" required="true" />
						<td><form:errors path="bookId" cssStyle="color:red" />
					</tr>
					<tr>
						<td><form:label path="bookName">Book Name:</form:label>
						<td><form:input path="bookName" value="${book.bookName}"
								required="true" />
						<td><form:errors path="bookName" cssStyle="color:red" />
					</tr>
					<tr>
						<td><form:label path="author">Author:</form:label>
						<td><form:input path="author" value="${book.author}"
								required="true" />
						<td><form:errors path="author" cssStyle="color:red" />
					</tr>
					<tr>
						<td><form:label path="publisher">Publisher:</form:label>
						<td><form:input path="publisher" value="${book.publisher}"
								required="true" />
						<td><form:errors path="publisher" cssStyle="color:red" />
					</tr>
					<tr>
						<td><form:label path="yearOfPublication">Year of Publication:</form:label>
						<td><form:input path="yearOfPublication" pattern="[0-9]{4}"
								title="YOP should be in format YYYY"
								value="${book.yearOfPublication}" required="true" />
						<td><form:errors path="yearOfPublication"
								cssStyle="color:red" />
					</tr>
					<tr>
						<td><form:label path="noOfBooks">No. Of Books:</form:label>
						<td><form:input path="noOfBooks" value="${book.noOfBooks}"
								required="true" />
						<td><form:errors path="noOfBooks" cssStyle="color:red" />
					</tr>
					<tr>
						<td colspan="2"><button type="submit">Add Book</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</c:if>
	<h4>
		<a id="home" href="librarianHome.htm">Home</a> <a id="logout" href="">Logout</a>
	</h4>

</body>
</html>