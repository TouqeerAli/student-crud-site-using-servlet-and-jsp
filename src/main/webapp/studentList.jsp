<%@ page import="java.util.List"%>
<%@ page import="model.Student"%>
<%@ page import="dao.StudentDAO"%>

<html>
<head>
<title>Student List</title>
<style>
<
style>html, body {
	height: 100%;
	margin: 0;
}

body {
	background: linear-gradient(45deg, purple, blue);
	background-repeat: no-repeat;
	font-family: Arial, Helvetica, sans-serif;
	margin: 20px;
}

h2 {
	color: #333;
}

table {
	width: 100%;
	margin-top: 20px;
	border-spacing: 0;
	border-collapse: separate;
	border-radius: 10px;
	border: 1px solid black;
}

th, td {
	padding: 8px;
	text-align: left;
	color: rgba(255, 255, 255, 0.8);
}

th {
	background-color: #242124;
	color: white;
	text-align: center;
}

#first-th {
	border-top-left-radius: 10px;
}

#last-th {
	border-top-right-radius: 10px;
}

a {
	text-decoration: none;
	margin-right: 10px;
	padding: 5px 10px;
	background-color: #4CAF50;
	color: #fff;
	border-radius: 5px;
}

a:hover {
	background-color: #45a049;
}

.navbar {
	overflow: hidden;
}

.navbar a {
	float: right;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.navbar a:hover {
	background-color: #ddd;
	color: black;
}

.form-container {
	display: none;
	width: 50%;
	margin: 20px auto;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 5px;
	color: white;
}

.form-container label {
	display: block;
	margin-bottom: 8px;
}

.form-container input {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	box-sizing: border-box;
}

.form-container button {
	background-color: #4CAF50;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input {
	border: none;
	outline: none;
}

.updateBtn {
	text-decoration: none;
	margin-right: 10px;
	padding: 5px 10px;
	background-color: #4CAF50;
	color: #fff;
	border-radius: 5px;
}

.title {
	color: white;
}
</style>
<script>
	// Function to toggle the visibility of the form
	function toggleForm() {
		var form = document.getElementById("addStudentForm");
		form.style.display = (form.style.display === "block") ? "none"
				: "block";
	}
</script>
</head>
<body>

	<div class="navbar">
		<a href="index.jsp"">Logout</a>
	</div>

	<h2 class="title">Students List</h2>

	<table>
		<thead>
			<tr>
				<th id="first-th">First Name</th>
				<th>Last Name</th>
				<th>Roll No</th>
				<th>Department</th>
				<th>Operations</th>
				<th id="last-th"></th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Student> students = (List<Student>) request.getAttribute("students");

			if (students != null) {

				for (Student student : students) {
			%>
			<tr>

				<td><%=student.getFirstName()%></td>
				<td><%=student.getLastName()%></td>
				<td><%=student.getRollNo()%></td>
				<td><%=student.getDepartment()%></td>

				<td>


					<form action="UpdateStudentServlet" method="post">
						<input type="hidden" name="id" value="<%=student.getId()%>">
						<input type="text" name="firstName"
							value="<%=student.getFirstName()%>" required> <input
							type="text" name="lastName" value="<%=student.getLastName()%>"
							required> <input type="text" name="rollNo"
							value="<%=student.getRollNo()%>" required> <input
							type="text" name="department"
							value="<%=student.getDepartment()%>" required> <input
							class="updateBtn" type="submit" value="Update">
					</form>
				</td>
				<td><a href="DeleteStudentServlet?id=<%=student.getId()%>">Delete</a></td>
			</tr>
			<%
			}
			%>


		</tbody>
	</table>
	<%
	}
	%>
	<br>

	<!-- Button to toggle the form visibility -->
	<a href="#" onclick="toggleForm()">Add Student</a>

	<!-- Form for adding a student -->
	<div class="form-container" id="addStudentForm">
		<h2 class="title">Add Student</h2>
		<form action="addStudentServlet" method="post">
			<label for="firstName">First Name:</label> <input type="text"
				id="firstName" name="firstName" required> <label
				for="lastName">Last Name:</label> <input type="text" id="lastName"
				name="lastName" required> <label for="rollNo">Roll
				No:</label> <input type="text" id="rollNo" name="rollNo" required> <label
				for="department">Department:</label> <input type="text"
				id="department" name="department" required>

			<button type="submit">Add</button>
		</form>
	</div>

</body>
</html>
