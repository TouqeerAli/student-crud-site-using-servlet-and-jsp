<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .navbar {
            overflow: hidden;
            background-color: #333;
            padding: 10px;
            margin-bottom: 20px;
        }

        .navbar a {
            float: right;
            display: block;
            color: #f2f2f2;
            text-align: center;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="#" onclick="toggleForm()">Logout</a>
    </div>

    <h2>Update Student</h2>

    <form action="UpdateStudentServlet" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>

        <label for="rollNo">Roll No:</label>
        <input type="text" id="rollNo" name="rollNo" required>

        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required>

        <!-- Hidden input field to store the student ID -->
        <input type="hidden" id="studentId" name="id">

        <button type="submit">Update</button>
    </form>

    <br>

    <!-- Your existing form for adding a student -->

</body>
</html>
