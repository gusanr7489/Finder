<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.6.0.js" 
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous">
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Add New Post</title>
<style>
	#body {
		background-color: aliceblue;
	}
	#board {
		position: absoulate;
		margin: 50px;
		background-color: white;
		height: 800px;
		border-radius: 20px;
		color: #1d466c;
	}
	#head {
		font-size:20px;
		color:#FF9D6E;
		margin-left: 10px;
		
	}
	#list {
		position: relative;
		left: 20%;
		font-size: 20px;
		font-weight: bold;
	}
	#list td input {
		text-align: center;
        margin: 20px;
        height: 20px;
        width: 400px;
        padding: 10px;
        font-size: 15px;
        border-radius: 10px;
       	
	}
	#list td textarea {
	
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
<body>

<h1>Add New Post</h1>
<form action="addok" method="post" enctype="multipart/form-data" method="post">
	<table>
		<tr><td>작성자:</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>사진:</td><td><input type="file" name="image_path"/></td></tr>
		<tr><td>물건:</td><td><input type="text" name="object"/></td></tr>
		<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
		<tr><td><a href="list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
	</table>
</form>

</body>
</html>