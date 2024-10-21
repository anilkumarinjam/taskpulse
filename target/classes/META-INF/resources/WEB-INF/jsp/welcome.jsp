<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to ToDo</title>
<style>
  body {
    font-family: 'Arial', sans-serif;
    background-color: #f0f8ff;
    color: #333;
    margin: 0;
    padding: 0;
  }

  .container {
    max-width: 800px;
    margin: 100px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    text-align: center;
    transition: all 0.3s ease-in-out;
  }

  .container:hover {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    transform: scale(1.02);
  }

  h1 {
    font-size: 2.5rem;
    color: #0073e6;
    margin: 0 0 20px 0;
    transition: color 0.3s ease-in-out;
  }

  h1:hover {
    color: #ff6347;
  }

  hr {
    border: 0;
    height: 1px;
    background: #ccc;
    margin: 20px 0;
  }

  a {
    text-decoration: none;
    font-size: 1.5rem;
    color: #0073e6;
    transition: color 0.3s ease-in-out;
  }

  a:hover {
    color: #ff6347;
  }

  .link-container {
    margin-top: 30px;
  }

  .link-container a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #0073e6;
    color: white;
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .link-container a:hover {
    background-color: #ff6347;
    transform: translateY(-5px);
  }
</style>
</head>
<body>

<div class="container">
  <h1>Welcome ${name}!</h1>
  <hr>
  <div class="link-container">
    <a href="todolist">Manage Your ToDos</a>
  </div>
</div>

</body>
</html>
