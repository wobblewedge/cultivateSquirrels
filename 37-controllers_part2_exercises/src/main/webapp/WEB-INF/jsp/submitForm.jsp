<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:import url="header.jsp">
<c:param name="pageTitle" value="Announcing Squirrel Parties for Dummies" />
</c:import>

</head>
<body>
		<div id="main_content">
			<h1>Review Cigar Parties</h1>
			<form action="submitForm" method="POST">
				<div class="formGroup">
					<label for="username">username: </label>
					<input type="text" name="username" id="username" required/>
				</div>
				<div class="formGroup">
					<label for="rating">Rating: </label>
					<input type=text name="rating" id="rating" required/>
				</div>	
				<div class="formGroup">		
					<label for="title">Review title: </label>
					<input type="text" name="title" id="title" required/>
				</div>	
				<div class="formGroup">		
					<label for="text">Review Text: </label>
					<input type="text" name="text" id="text" required/>
				</div>
				<div class="formGroup">
					<input type="submit" value="Submit!" required/>
				</div>		
			
			</form>
		</div>
	</body>
</html>