<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        integrity="sha384-lTnGVqP6DFqYzQ3QeZ97W0iQRwA5fd2v4zO3Ay3q0MZ5PjR7me1rpuH8rCiQ9QrN"
        crossorigin="anonymous">

    <title>Edit Todo App</title>
</head>
<body>
    <%@ include file="common/nav.html"%>

    <div>
        <h2>Edit Todo</h2>
        <form action="editTodo" method="post">
            <div>
                <label for="todoDescription">Todo Description:</label>
                <input type="text" id="todoDescription" name="description" value="${obj.description}" required>
            </div>
            
            <div>
                <label for="todoDate">Todo Date:</label>
                <input type="date" id="todoDate" name="tDate" value="${obj.tDate}" required>
            </div>
            
            <input type="hidden" name="id" value="${obj.id}">
            <input type="submit" value="Save Changes">
        </form>
    </div>

    <%@ include file="common/footer.html"%>
</body>
</html>
