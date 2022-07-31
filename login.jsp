<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">


<!-- StyleSheet -->

<style type="text/css">

.content h2
{
	text-align: center;
	margin-top: 50px;
	color: skyblue;
	background-color: #000;
	background-size: cover:
}
.content h2:hover
{
	color: white;
	background-color: green;
}
form
{
	text-align: center;
	margin-top: 15px;
	font-family: Times New Roman;
}
form input
{
	width: 300px;
	border-radius: 5px;
	border-color: green;
	background-color: darkgray;
	color: white;
}
form input:hover
{
	background-color: #fff;
	color: #000;
}

</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="student.jsp">Student <span
				style="color: red; font-size: 30px; font-family: bold italic; text-transform: uppercase;">Login</span></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						href="student.jsp">Home</a></li>
					
					<li class="nav-item"><a class="nav-link active"
						href="signup.jsp">SignUp</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<section class="signin" id="signin">
		<div class="content">
			<h2>Login</h2>
			<form action="Login" method="post">
				<input type="email" name="email" placeholder="User Email" required><br>
				<br> <input type="password" name="pass"
					placeholder="User Password" required><br>
				<br> 
				<button class="btn btn-primary">SignIn</button> 
				<button class="btn btn-primary">SignUp</button>

			</form>
		</div>

	</section>



</body>
</html>