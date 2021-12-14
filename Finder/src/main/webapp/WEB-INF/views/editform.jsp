<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Edit Post</title>
</head>
<body>
	<h1>게시물 수정</h1>
	
	<form:form commandName="finderVO" method="POST" action="../editok">
		<form:hidden path="id"/>
		<table id="edit">
			<tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
			<tr><td>물건</td><td><form:input path="object"/></td></tr>
			<tr><td>내용</td><td><form:input path="content"/></td></tr>
			<tr><td>사진</td><td><form:input path="image_path"/></td></tr>
		</table>
		
		<input type="submit" value="수정하기"/>
		<input type="button" value="취소하기" onclick="history.back()">
	</form:form>
</body>
</html>