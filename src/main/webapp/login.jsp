<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-lTnGVqP6DFqYzQ3QeZ97W0iQRwA5fd2v4zO3Ay3q0MZ5PjR7me1rpuH8rCiQ9QrN" crossorigin="anonymous">
</head>
<body>
    <div class="login-container"> <!-- Added a container div for centering -->
        <h2>Welcome to Your Todo App Login</h2>

        <form action="login" method="get">
            <label for="username"><i class="fas fa-user"></i> Username:</label>
            <input type="text" id="username" name="username" required><br> <br>
            
            <label for="password"><i class="fas fa-lock"></i> Password:</label>
            <input type="password" id="password" name="password" required><br><br>
            
            
            
            <button type="submit"><i class="fas fa-sign-in-alt"></i> Submit</button>
        </form>
    </div>
</body>
</html>
