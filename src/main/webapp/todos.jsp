<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha384-lTnGVqP6DFqYzQ3QeZ97W0iQRwA5fd2v4zO3Ay3q0MZ5PjR7me1rpuH8rCiQ9QrN"
	crossorigin="anonymous">

<title>Welcome to Todo App</title>
</head>
<body>
	<%@ include file="common/nav.html"%>

	<%@ include file="common/header.html"%>

	<div>
		<h2>Welcome to the Todo App</h2>

		<!-- Display the todos -->
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Description</th>
					<th>Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="todo" items="${obj}">
					<tr>
						<td>${todo.id}</td>
						<td>${todo.description}</td>
						<td>${todo.tDate}</td>
						<td><a href="edittodo?id=${todo.id}">Edit</a> <span> | </span> <a
							href="deleteTodo/${todo.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>

	<%@ include file="common/footer.html"%>
</body>
</html>