<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<!-- StyleSheet -->
<style type="text/css">
container
{
margin: 0;
padding: 0;
font-family: Times new roman;
}
h2
{
text-align: center;
margin-top: 200px;
font-size: 50px;
font-family: bold;
color: green;
}
h2:hover
{
color: skyblue;
transition: 2s auto;
}


</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="student.jsp">Student <span style="color: red;font-size: 30px;font-family: bold italic;text-transform: uppercase;">Details</span></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				    <li class="nav-item"><a class="nav-link active"
						href="index.html">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="signup.jsp">Register</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="login.jsp">Login</a></li>
						
				</ul>
			</div>
		</div>
	</nav>

<div class="container">
<h2>Welcome To Student Management System</h2>
</div>
	
</body>
</html>