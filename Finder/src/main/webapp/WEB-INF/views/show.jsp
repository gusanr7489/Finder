<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Edit Post</title>
<style>
	#body {
		background-color: aliceblue;
	}
	#board {
		position: absoulate;
		margin: 50px;
		background-color: white;
		height: 820px;
		border-radius: 20px;
		color: #1d466c;
	}
	#head {
		font-size:20px;
		color:#FF9D6E;
		margin-left: 10px;
		
	}
	#edit {
		position: relative;
		left: 20%;
		font-size: 20px;
		font-weight: bold;
	}
	#edit td input {
		
		text-align: center;
        margin: 20px;
        height: 20px;
        width: 400px;
        padding: 10px;
        font-size: 15px;
        border-radius: 10px;
       	
	}
	#edit .content {
		border: 1px solid #1d466c;
		text-align: center;
		margin-left:10px;
        margin-top: 20px;
        width: 600px;
        height: 300px;
        padding: 10px;
        font-size: 15px;
        border-radius: 10px;
	}
	
	#text {
		border: 1px solid #1d466c;
	}
	#button {
		margin: 20px;
		width: 400px;
		height: 40px;
		color: white;
		font-size: 16px;
		border: 1px solid #C4E574;
		border-radius: 10px;
		background-color: #C4E574;
	}
	#button:hover {
		cursor:pointer;
		background-color: #C4E574;
	}

	#file {
		color:#C4E574;
	}
	
	li {
		
		list-style: none;
	}
	footer{
		text-align: center;
	    bottom: 0;
	    height: 50px;
	    width: 100%;
	    
	}
	footer ul a{
    	text-decoration: none;
    	color: #657787;
    	font-size: 14px;
	}
	
	footer ul li{
		opacity: 0.5;
		font-size: 15px;
		font-weight: bold;
    	padding-left: 20px;
	}
	
</style>
</head>
<body id = "body">
	<div id= "board" style = 'width: 100%; text-align: center; padding-top: 100px'>
		<h1>게시물</h1>
		
		<form:form commandName="finderVO" method="POST" action="../editok">
			<form:hidden path="id"/>
			<table id ="edit">
				<tr>
					<td>Name</td>
					<td><form:input id = "text" path="writer"/></td>
				</tr>
				<tr>
					<td>Object</td>
					<td><form:input id = "text" path="object"/></td>
				</tr>
				<tr>
					<td>Photo</td>
					<td><form:input id = "text" path="image_path"/></td>
				</tr>
				<tr>
					<td>Content</td>
					<td><form:input class = "content" path="content"/></td>
				</tr>
	
			</table>
	
			<input id = "button" type="button" value="뒤로가기" onclick="history.back()">
		</form:form>
	</div>
	<footer>
		<ul>
			<li><a href = "">About</a></li>
			<li><a href = "">@2021 Finder, Inc.</a></li>
		</ul>
	</footer>
</body>
</html>