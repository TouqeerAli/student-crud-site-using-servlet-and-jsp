<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(45deg, purple, blue);
	background-repeat: no-repeat;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
	padding: 0;
	height: 100vh;
}

.container {
	background-color: #242124;
	color: white;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 400px;
	margin: 100px auto;
	padding: 20px;
}

.container h2 {
	text-align: center;
}

input, select, button {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	box-sizing: border-box;
}

input {
	background: transparent;
	border: 1px solid #ccc;
	color: white;
}

select {
	background: transparent;
	border: 1px solid #ccc;
	color: white;
}


.gender-option {
	background: rgba(0, 0, 0, 0.3);
	color: #fff;
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
</style>
</head>
<body>
	<div class="container">
		<h2>Register</h2>
		<form action="registerServlet" method="post">

			<input type="text" id="firstName" name="firstName"
				placeholder="First Name" required> <input type="text"
				id="lastName" name="lastName" placeholder="Last Name" required>


			<select id="gender" name="gender" required>
				<option selected disabled>Choose gender:</option>
				<option class="gender-option" value="male">Male</option>
				<option class="gender-option" value="female">Female</option>
				<option class="gender-option" value="other">Other</option>
			</select> <input type="email" id="email" name="email" placeholder="Email"
				required> <input type="password" id="password"
				name="password" placeholder="Password" required>

			<button type="submit">Register</button>
		</form>

		<p>
			Already have an account? <a href="index.jsp">Login</a>
		</p>
	</div>
</body>
</html>
