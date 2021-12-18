<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.6.0.js" 
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous">
	</script>
	<script src = "https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<script>
	
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Finder Board</title>
<style>
	#body {
		background-color: aliceblue;
	}
	#board {
		margin: 50px;
		background-color: white;
		height: 800px;
		border-radius: 20px;
		color: #1d466c;
	}
	
	 @media (min-width: 1000px) {
        #add {
          position: absolute;
          top: 20%
          
        }
      }
	
	#add {
        margin-left: 20px;
        width: 30px;
        height: 30px;
        border-radius: 20%;
        background-color:#C4E574;
        position: absolute;
        right: 10%;
        top: 15%;
        
    }
    #add .fa-plus-circle {
    	position: relative;
    	left:25%;
    	top: 20%;
    }
    
    
    
	#board h1 {
		
		text-align:center;
		padding: 20px;
		border: 0px solid #1d466c;
		border-radius: 20px;
		color: #1d466c;
		
	}
	
	#board a {
		color: white;
		
	}
	
	#list {
		margin-top: 60px;
	  	font-family: sans-serif;
	  	border-collapse: collapse;
	  	width: 100%;
	  	
	}
	#list td, #list th {
	  border: 1px solid #ddd;
	  padding: 8px;
	  text-align:center;
	}
	
	
	#list .trhead {
		background-color: #f2f2f2;
	}
	#list tr:hover {
		background-color: #C4E574;
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
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
 
<body id = "body">
	<div id = "board">
		<h1>찾아주세요</h1>
		<table id="list" width="90%">
		<div id = "circle1">	
	        <span>
	        	<a id = "add" href = "add"><i class="fas fa-plus-circle"></i></a>
	        </span>
	    </div>
		<tr class = "trhead">
			<th><input type = "checkbox" id = "checkall"/></th>
			<th>Id</th>
			<th>Writer</th>
			<th>Object</th>
			<th>Content</th>
			<th>Regdate</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<div class = "headline"></div>
		<c:forEach items="${list}" var="u">
			<tr>
				<td><input type = "checkbox" class = "checkselect" /></td>
				<td>${u.id}</td>
				<td>${u.writer}</td>
				<td>${u.object}</td>
				<td>${u.content}"</td>    
				<td><fmt:formatDate value="${u.regdate}" pattern="yyyy-MM-dd-HH:mm"/></td>
				
				
				<td><a href="editform/${u.id}"><i class="far fa-edit"></i></a></td>
			<td><a href="javascript:delete_ok('${u.id}')"><i class="fas fa-minus-circle"></i></a></td>
			</tr>
			<script>
				$('#checkall').click(function(){
					var checked = $('#checkall').is(':checked');
					
					if(checked)
						$('input:checkbox').prop('checked',true);
					
					else {
						$("input:checkbox").prop("checked", false)
					}
				});
				
				$(document).on("click", ".checkselect", function(){
				    $("#checkall").attr('checked', false);
				});
				
				
				var cont = $('#list > tr').length
				const table = document.getElementById('list');
				const totalCount = table.rows.length;
			</script>
		</c:forEach>
		</table>
		
	</div>	
	<footer>
		<ul>
			<li><a href = "">About</a></li>
			<li><a href = "">@2021 Finder, Inc.</a></li>
		</ul>
	</footer>
<script src ="js/jquery-3.1.1.js"></script>
<script src = "js/bootstrap.js"></script>

</body>
</html>