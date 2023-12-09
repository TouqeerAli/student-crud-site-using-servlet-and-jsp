<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
html, body {
	height: 100%;
	margin: 0;
}

body {
	background: linear-gradient(45deg, purple, blue);
	background-repeat: no-repeat;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: Arial, Helvetica, sans-serif;
}

.container {
	width: 100%;
	height: 400px;
	max-width: 300px;
	color: white;
	padding: 40px;
	padding-top: 80px; background-color : #242124;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: #242124;
}

.container h2 {
	text-align: center;
	margin-top: 0;
}

input, button {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border-radius: 5px;
}

input {
	background: transparent;
	border: 1px solid #ccc;
	color: white;
}

button {
	background-color: #4CAF50;
	color: white;
	border: none;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}

.loginBtn {
	display: flex;
	justify-content: center;
}

a {
	color: #4CAF50;
	text-decoration: none;
}

.forgotPasswordLink {
	text-align: right;
	margin-bottom: 10px;
}

.signUpLink {
	text-align: center;
}

.errorMessage {
	color: red;
	font-size: 12px;
	margin-bottom: 10px;
}

p {
	font-size: 15px;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Login</h2>
		<p class="para1">Please enter your username and password!</p>
		<form action="loginServlet" method="post">

			<input type="email" id="username" name="username"
				placeholder="Username" required> <input type="password"
				id="password" name="password" placeholder="Password" required>

			<%
			String error = (String) session.getAttribute("error");
			if (error != null) {
			%>
			<p style="color: red;"><%=error%></p>
			<%
			session.removeAttribute("error");
			%>
			<%
			}
			%>
			<div class="loginBtn">
				<button type="submit">Login</button>
			</div>
		</form>

		<p>
			Don't have an account? <a href="register.jsp">Register</a>
		</p>
	</div>
</body>
</html>
