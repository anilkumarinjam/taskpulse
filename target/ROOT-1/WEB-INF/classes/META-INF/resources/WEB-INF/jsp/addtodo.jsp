<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <link href="webjars/bootstrap/5.2.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Spring Boot MVC</title>
    <style>
        body {
            background: linear-gradient(135deg, #e6f9ff, #f0f8ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            max-width: 400px; /* Limit the width of the form */
            width: 90%; /* Responsive width */
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color:#0073e6;
            margin-bottom: 20px;
            transition: color 0.3s ease;
        }

        h1:hover {
            color: #ff6347;
        }

        input[type="text"] {
            border-radius: 8px; /* Rounded corners for input fields */
        }

        input[type="text"]:focus {
            border-color: #0073e6;
            box-shadow: 0 0 5px rgba(0, 115, 230, 0.5);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-success {
            width: 100%;
            background: linear-gradient(135deg, #0073e6, #ff6347);
            transition: background-color 0.3s ease;
            border: none; /* Remove default border */
            border-radius: 8px; /* Rounded corners for button */
        }

        .btn-success:hover {
            background: linear-gradient(135deg, #ff6347, #0073e6);
            color: white;
        }

        .form-label {
            font-weight: bold; /* Make labels bold for emphasis */
        }

        .form-control {
            margin-bottom: 15px; /* Spacing between fields */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Add or Modify Your Task</h1>
    <form:form action="add-todo" method="post" modelAttribute="t1">
        <div class="id">
            <form:input type="hidden" path="id"/>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description:</label>
            <form:input type="text" id="description" class="form-control" placeholder="Enter ToDo Desc..." path="description" required="required"/>
            <form:errors path="description" cssClass="text-warning"/>
        </div>
        <div class="mb-3">
            <label for="targetdate" class="form-label">Target Date:</label>
            <form:input type="text" id="targetdate" class="form-control" path="targetdate" placeholder="YYYY-MM-DD"/>
        </div>
        <div class="mb-3">
            <label for="done" class="form-label">Done:</label>
            <form:input type="text" id="done" class="form-control" path="done"/>
        </div>
        <input type="submit" class="btn btn-success" value="Add ToDo">
    </form:form>
</div>

<script src="webjars/jquery/3.5.1/dist/jquery.min.js"></script>
<script src="webjars/bootstrap/5.2.2/js/bootstrap.min.js"></script>
</body>
</html>
