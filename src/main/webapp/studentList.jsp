<%@ page import="java.util.List" %>
<%@ page import="model.Student" %>
<%@ page import="dao.StudentDAO" %>

<html>
<head>
    <title>Student List</title>
    <style>
        <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
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
            background-color: #333;
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
    </style>
    <script>
        // Function to toggle the visibility of the form
        function toggleForm() {
            var form = document.getElementById("addStudentForm");
            form.style.display = (form.style.display === "block") ? "none" : "block";
        }
    </script>
</head>
<body>

    <div class="navbar">
        <a href="index.jsp"">Logout</a>
    </div>

    <h2>Student List</h2>

    <table border="1">
       <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Roll No</th>
                <th>Department</th>
                <th>Operations</th> 
            </tr>
        </thead>
        <tbody>
            <% 
            List<Student> students = (List<Student>) request.getAttribute("students");
           
            if(students !=null){
            
            for (Student student : students) { %>
                <tr>
                    
                    <td><%= student.getFirstName() %></td>
                    <td><%= student.getLastName() %></td>
                    <td><%= student.getRollNo() %></td>
                    <td><%= student.getDepartment() %></td>
                    
                    <td>
                  
                        
                        <form action="UpdateStudentServlet" method="post">
                            <input type="hidden" name="id" value="<%= student.getId() %>">
                            <input type="text" name="firstName" value="<%= student.getFirstName() %>" required>
                            <input type="text" name="lastName" value="<%= student.getLastName() %>" required>
                            <input type="text" name="rollNo" value="<%= student.getRollNo() %>" required>
                            <input type="text" name="department" value="<%= student.getDepartment() %>" required>
                            <input type="submit" value="Update">
                        </form>
                        <a href="DeleteStudentServlet?id=<%= student.getId() %>">Delete</a>
                    </td>
                </tr>
            <% }  %>
           
            
        </tbody>
    </table>
<% }  %>
    <br>
    
    <!-- Button to toggle the form visibility -->
    <a href="#" onclick="toggleForm()">Add Student</a>

    <!-- Form for adding a student -->
    <div class="form-container" id="addStudentForm">
        <h2>Add Student</h2>
        <form action="addStudentServlet" method="post">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>

            <label for="rollNo">Roll No:</label>
            <input type="text" id="rollNo" name="rollNo" required>

            <label for="department">Department:</label>
            <input type="text" id="department" name="department" required>

            <button type="submit">Add</button>
        </form>
    </div>

</body>
</html>
