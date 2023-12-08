<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	margin: 100px auto;
	padding: 20px;
}

.container h2 {
	text-align: center;
}

input {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border-radius: 5px;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

button:hover {
	background-color: #45a049;
}

.loginBtn {
	display: flex;
	justify-content: center;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Login</h2>
		<form action="loginServlet" method="post">
			<label for="username">Username:</label> <input type="email"
				id="username" name="username" required> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required>
			
			<%
			String error = (String) session.getAttribute("error");
			if (error != null) {
			%>
			<p style="color: red;"><%=error%></p>
			<% session.removeAttribute("error");%>
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
