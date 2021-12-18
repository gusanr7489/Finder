<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>Login Page</title>
<style>
	* {
		padding: 0px;
		margin: 0px;
		
		text-decoration: none;
		font-family: sans-serif;
	}
	
	body {
	    display: flex;
		background-color: aliceblue;
		posision: absolute;
		width: auto;
		height: 900px;
	}
	
	.box1 {
		position: absolute;
		
		width: 500px;
	}
	.box2 {
		margin-top: 20px;
		position: absolute;
		right: 0%;
		left: 60%;
		width: 500px;
		opacity: 0.7;
		font-size: 600px;
	}
	img {
		
		height: 600px;
		width: 600px;
	}
	
	li {
		
		list-style: none;
	}
	
	@import "//netdna.bootstrapcdn.com/font-awesome/3.0/css/font-awesome.css";
	.loginform {
		margin-left: 150px;
		color: #1d466c;
		posision: absolute;
		width: 600px;
		height: 600px;
		padding: 30px, 20px;
		background-color: white;
		text-align: center;
		top: 50%;
		right: 10%;
		font-family: FontAwesome;
		border-radius: 30px;
	}
	.loginform h2 {
		position: relative;
		top: 5%;
		font-size: 50px;
		overflow: hidden;
		margin: 30px;
		
	}
	img {
	 border-radius: 20px 20px 20px 20px;
	}
	input {
		
		margin-top: 30px;
        text-align: center;
        border-radius: 50px;
        height: 40px;
        border-radius: 10px;
        width: 400px;
        border: 2px solid #1d466c;
	}
    
    input::placeholder {
        color: rgb(175, 174, 174);
        font-size: 15px;
    }
	.idform {
		boder-bottom: 2px solid #adadad;
		margin: 30px;
		padding: 10px 10px;
	}
	button {
		position: relative;
		height: 50px;
        background-color: dodgerblue;
        border: none;
        display: block;
        width: 50%;
        height: 60px;
        color: white;
        padding: 10px;
        margin-top: 20px;
        cursor: pointer;
        border-radius: 10px;
        font-weight: bold;
        font-size:20px;
        top: 30%;
        left: 25%;
	}
	button:hover {
		transform: scale(1.05, 1.05);
       
		 background-color: rgb(243, 118, 185);
	}
	
	
	footer{
	    position: fixed;
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
<body data-spy = "scroll" data-target = ".navbar" data-offset = "60">
	<div id = "box-head" style = 'width: 100%; text-align: center; padding-top: 100px' >
		<ul>
			<li class = "box1">
				<form method = "post" action = "loginOk" class = "loginform">
					<h2>Login</h2>
					<div class = "idform">
						<input size = "60" type = "text" name = "userid" placeholder ="ID">
					</div>
					<div class = "passform">
						<input type = "password" name = "password" placeholder = "PW">
					</div>
					<button type = "submit" class = "botton" onclick = "button()">
						<div style= "font-size: 30px;">
							<i class="fas fa-key"></i>
						</div>
					</button>
					
					<script>
						let button = () => {
							alert("Welcome!!")
						}
					</script>
					
				</form>
			</li>
			<li class = "box2">
				<i class="fab fa-searchengin"></i>
			</li>
			
		</ul>
	<footer>
		<ul>
			<li><a href = "">About</a></li>
			<li><a href = "">@2021 Finder, Inc.</a></li>
		</ul>
	</footer>
	</div>
</body>

</html>