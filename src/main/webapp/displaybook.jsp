<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table,th,td{
	border: 1px solid black;
	border-collapse:collapse;
	}
</style>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
<br>
<div style="color:blue;">${msg}</div>
	<table>
		<tr>
			<th>Book Code</th>
			<th>Book Title</th>
			<th>Book Author</th>
			<th>Book Price</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${requestScope.list}" var="data">
			<tr>
				<td>${data.bookCode}</td>
				<td>${data.bookTitle}</td>
				<td>${data.bookAuthor}</td>
				<td>${data.bookPrice}</td>
				<td>
					<a href="UpdateBookServlet?code=${data.bookCode}">Update</a>|<a href="DeleteBookServlet?code=${data.bookCode}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>