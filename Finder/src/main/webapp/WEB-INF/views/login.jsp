<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
	img, label {
		display:line-block;
	}
	
</style>
</head>
<body>
	<div style = 'width: 100%; text-align: center; padding-top: 100px'>
	<img src = '../img/login.jpg' height = "250">
	
	<form method = "post" action = "loginOk">
		<div>
			<label>UserID:</label>
			<input type = "text" name = "userid" />
			<label>Password:</label>
			<input type = "password" name= "password"/>
		</div>
		<button type = "submit">login</button>
	</form>
	
	</div>
</body>

</html>