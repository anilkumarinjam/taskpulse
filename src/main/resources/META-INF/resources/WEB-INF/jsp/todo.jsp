<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="webjars/bootstrap/5.2.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Your ToDo's</title>
    <style>
        body {
            background-color: #f8f9fa; /* Light background for contrast */
        }

        h1 {
            text-align: center; /* Center the heading */
            margin-bottom: 20px;
            color: #343a40; /* Dark color for heading */
        }

        .container {
            max-width: 90%; /* Responsive max width */
            margin: auto;
            padding: 20px;
        }

        table {
            width: 100%; /* Full width */
            border-collapse: collapse; /* No space between borders */
            border-radius: 10px; /* Rounded corners */
            overflow: hidden; /* Ensures the border radius is visible */
            animation: fadeIn 1s ease; /* Fade-in animation */
        }

        thead {
            background-color: #007bff; /* Bootstrap primary color */
            color: white; /* White text for contrast */
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd; /* Border for table rows */
        }

        tbody tr:hover {
            background-color: #f1f1f1; /* Light grey on hover */
            transition: background-color 0.3s; /* Smooth transition */
        }

        /* Animation Keyframes */
        @keyframes fadeIn {
            from {
                opacity: 0; /* Start transparent */
            }
            to {
                opacity: 1; /* End fully visible */
            }
        }

        /* Responsive button styling */
        .btn {
            margin: 5px 0; /* Margin for vertical spacing */
            width: 100%; /* Full width buttons */
        }

        @media (min-width: 768px) {
            .btn {
                width: auto; /* Reset width for larger screens */
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-light bg-light mb-3 p-1">
    <a class="navbar-brand m-1" href="https://anilkumarinjam.github.io/portfolio">/Dev</a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="todolist">Todos</a></li>
        </ul>
    </div>
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="login">Logout</a></li>
    </ul>    
</nav>

<div class="container">
    <h1>Your ToDos</h1>
    <hr size="5" color="blue">
    <table>
        <thead>
            <tr>
                <th>Description</th>
                <th>TargetDate</th>
                <th>Done</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${ltd}" var="todo">
                <tr>
                    <td>${todo.description}</td>
                    <td>${todo.targetdate}</td>
                    <td>${todo.done}</td>
                    <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
                    <td><a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="add-todo" class="btn btn-success">Add-ToDo</a>
</div>

<script src="webjars/jquery/3.5.1/dist/jquery.min.js"></script>
<script src="webjars/bootstrap/5.2.2/js/bootstrap.min.js"></script>
</body>
</html>
