<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-lTnGVqP6DFqYzQ3QeZ97W0iQRwA5fd2v4zO3Ay3q0MZ5PjR7me1rpuH8rCiQ9QrN" crossorigin="anonymous">
    
    <title>Welcome to Todo App</title>
</head>
<body>
    <%@ include file="common/nav.html" %>

    <%@ include file="common/header.html" %>

    <!-- Your TODO application content goes here -->

    <!-- Example content -->
    <div>
        <h2>Welcome to the Todo App</h2>
        <a href="addtodo.jsp">Add Todo</a>
    </div>

    <%@ include file="common/footer.html" %>
</body>
</html>
