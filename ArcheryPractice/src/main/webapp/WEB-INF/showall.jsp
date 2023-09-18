<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Archery Practice All Sessions</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<div class="header">

		<h1>Show All</h1>
	</div>


	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Date</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="sesh" items="${ArcheryPractice}">

				<tr>
					<td>${sesh.id}</td>
					<td><a href="show.do?sessionId=${sesh.id}"> ${sesh.date }
					</a></td>
				</tr>




			</c:forEach>
		</tbody>

	</table>

	<br>
	<br>
	<a href="home.do">Go back to home</a>

</body>
</html>