<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login and Registration Form</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">

</head>
<body>

	<div class="container mt-4">
		<h1>Welcome!</h1>
	
		<br>
	
		<h2>Register</h2>
		
		<form:form action="/register" method="POST" modelAttribute="newUser">
		
			<div class="form-group">
				<form:label path="userName">User Name:</form:label>
				<form:input type="text" path="userName" class="form-control" />
				<form:errors path="userName" class="text-danger" />
			</div>
			
			<div class="form-group">
				<form:label path="email">Email:</form:label>
				<form:input type="email" path="email" class="form-control" />
				<form:errors path="email" class="text-danger" />
			</div>
			
			<div class="form-group">
				<form:label path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control" />
				<form:errors path="password" class="text-danger" />
			</div>
			
			<div class="form-group">
				<form:label path="confirm">Confirm Password:</form:label>
				<form:input type="password" path="confirm" class="form-control" />
				<form:errors path="confirm" class="text-danger" />
			</div>
			
			<br>
			
			<input type="submit" value="Register" class="btn btn-success fw-bold" />
			
		</form:form>

		<br>

		<h2>Login</h2>
		
		<form:form action="/login" method="POST" modelAttribute="newLogin">
		
			<div class="form-group">
				<form:label path="email">Email:</form:label>
				<form:input type="email" path="email" class="form-control" />
				<form:errors path="email" class="text-danger" />
			</div>
			
			<div class="form-group">
				<form:label path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control" />
				<form:errors path="password" class="text-danger" />
			</div>
			
			<br>
			
			<input type="submit" value="Login" class="btn btn-success fw-bold" />
			
		</form:form>
		
	</div>

</body>
</html>