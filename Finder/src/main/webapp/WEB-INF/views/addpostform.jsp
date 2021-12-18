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
	
	#list td select {
		text-align: center;
        margin: 20px;
        height: 30px;
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
<body id="body">
	<div id = "board" style = 'width: 100%; text-align: center; padding-top: 100px'>
		<h1>게시물 등록</h1>
		<form action="addok" method="post">
			<div id = "head">
				<p></p>
			</div>
			<table id ="list">
				<tr>
					<td>Name</td>
					<td><input id= "text" type="text" name="writer" placeholder = "이름을 반드시 입력하세요" required/></td>
				</tr>
				<tr>
					<td>Category</td>
					<td><select id = "text" name = "cate">
						<option value ="찾아주세요">찾아주세요</option>
						<option value = "발견했어요">발견했어요</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>Object</td>
					<td><input id= "text" type="text" name="objec" placeholder = "물건을 반드시 입력하세요" required/></td>
				</tr>
				<tr>
					<td>Photo</td>
					<td><input id ="file" type="file" name="image_path" accept="image/*" multiple onchange = "alert(this.value)" /></td>
				</tr>
				<tr>
					<td>Content</td>
					<td><textarea id = "text" cols="50" rows="5" name="content" ></textarea></td>
				</tr>
			</table>
			<input id = "button" type="submit" value="등록하기" onclick = "button()"/>
			<input id = "button" type="button" value="취소하기" onclick="history.back()">
			<script>
				let button = () => {
					alert("게시물이 등록되었습니다!!")
				}				
			</script>
		</form>
	</div>
	<footer>
		<ul>
			<li><a href = "">About</a></li>
			<li><a href = "">@2021 Finder, Inc.</a></li>
		</ul>
	</footer>
</body>
</html>