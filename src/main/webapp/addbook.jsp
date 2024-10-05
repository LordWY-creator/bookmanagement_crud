<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
<br>
<div style="color:red;">${error}</div>
	<form action="AddBookServlet" method="post">
	<table>
	
	<tr>
	<td>Book Code</td>
	<td><input type="text" name="code" value="${bean.bookCode}"></td>
	</tr>
	
	<tr>
	<td>Book Title</td>
	<td><input type="text" name="title" value="${bean.bookTitle}"></td>
	</tr>
	
	<tr>
	<td>Book Author</td>
	<td><input type="text" name="author" value="${bean.bookAuthor}"></td>
	</tr>
	
	<tr>
	<td>Book Price</td>
	<td><input type="text" name="price" value="${bean.bookPrice}"></td>
	</tr>
	
	<tr>
	<td></td>
	<td><input type="submit" value="Add"></td>
	</tr>
	</table>
	</form>
</body>
</html>