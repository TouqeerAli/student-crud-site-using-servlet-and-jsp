# Student CRUD Project

## Overview

This is a simple web application for managing student records. It allows users to log in, view a list of students, update student information, delete students, and add new students.

## Features

- **Login System:** Users can log in with a valid username and password.
- **Registration:** New users can register to create an account.
- **Student List:** Upon successful login, users are redirected to a page displaying a list of students.
- **Update and Delete:** Users can update and delete individual student records.
- **Add Student:** Users can add new students to the system.
- **Logout:** Users can log out, returning to the login page.

## Technologies Used

- **Frontend:** JSP (JavaServer Pages)
- **Backend:** Java Servlets
- **Database:** (Include if you are using any specific database)

## Project Structure

### web/

- **index.jsp:** Login page with username and password validation.
- **register.jsp:** User registration page.
- **studentList.jsp:** Page displaying the list of students with update and delete options.
- **updateStudentForm.jsp:** Form for updating student information.

### src/

- **controller/LoginServlet.java:** Servlet handling login requests.
- **controller/RegisterServlet.java:** Servlet handling registration requests.
- **controller/StudentListServlet.java:** Servlet handling student list requests.
- **controller/UpdateStudentServlet.java:** Servlet handling student update requests.
- **controller/AddStudentServlet.java:** Servlet handling adding new student requests.
- **controller/DeleteStudentServlet.java:** Servlet handling student deletion requests.
- **dao/StudentDAO.java:** Data Access Object for managing student data.
- **model/Student.java:** Model class representing a student.

## Usage

### Login:

- Access the application and log in using your username and password.
- If you don't have an account, click on the "Register" link to create one.

### Registration:

- Fill in the registration form with your details and submit.

### View Student List:

- After login, you'll be redirected to a page showing a table of students.

### Update and Delete:

- Each row in the student table has buttons to update or delete the respective student record.

### Add Student:

- Below the student table, there's a button to add a new student. Click it to fill in the details and add a new student.

### Logout:

- Click on the "Logout" link to log out and return to the login page.

## Project Images

### Login:

![image](https://github.com/TouqeerAli/student-crud-site-using-servlet-and-jsp/assets/103946729/9bc547b0-0b67-47e8-a805-ca08321a0a06)

### Register:

![image](https://github.com/TouqeerAli/student-crud-site-using-servlet-and-jsp/assets/103946729/a167ecf0-03d8-4679-a0d3-c216c1aaf787)

### Students List:

![image](https://github.com/TouqeerAli/student-crud-site-using-servlet-and-jsp/assets/103946729/6ebe66df-8915-4c2d-8c0a-4cba330e256b)


