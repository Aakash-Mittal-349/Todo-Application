<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-lTnGVqP6DFqYzQ3QeZ97W0iQRwA5fd2v4zO3Ay3q0MZ5PjR7me1rpuH8rCiQ9QrN" crossorigin="anonymous">

<title>Add Todo</title>
</head>
<body>
<%@ include file="common/nav.html" %>

    <div>
        <h2>Add a New Todo</h2>
        <form action="registertodo" method="get">
            <label for="todoDescription">Todo Description:</label>
            <input type="text" id="todoDescription" name="description" required>
            
            <label for="todoDate">Todo Date:</label>
            <input type="date" id="todoDate" name="tDate" required>
            
            <input type="submit" value="Add Todo">
        </form>
    </div>

    <%@ include file="common/footer.html" %>
</body>
</html>