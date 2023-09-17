<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Archery Practice Session</title>
</head>
<body>
	<a href="home.do">Go back to home</a>
	<br>
	<h1>Session ID: ${ArcheryPractice.id}</h1>

	<c:choose>

		<c:when test="${empty ArcheryPractice }">
			<h1>Session not found</h1>
		</c:when>
		<c:otherwise>

			<table>
				<tr>
					<th>Date</th>
					<td>${ArcheryPractice.date}</td>
				</tr>
				<tr>
					<th>Arrows Slung</th>
					<td>${ArcheryPractice.arrowsShot}</td>
				</tr>
				<tr>
					<th>Bullseyes</th>
					<td>${ArcheryPractice.bullseye}</td>
				</tr>
				<tr>
					<th>Location</th>
					<td>${ArcheryPractice.location}</td>
				</tr>
				<tr>
					<th>Duration</th>
					<td>${ArcheryPractice.duration}</td>
				</tr>
				<tr>
					<th>Coffee</th>
					<td>${ArcheryPractice.coffee}</td>
				</tr>
				<tr>
					<th>Temperature</th>
					<td>${ArcheryPractice.temperature}</td>
				</tr>
			</table>


		</c:otherwise>
	</c:choose>
	<br>
	<br>

	<form action="updateForm.do" method="get">

		<input type="hidden" name="sessionId" value="${ArcheryPractice.id }" />
		<input type="submit" value="Update Session" />
	</form>
	<br>
	<br>

	<form action="deleted.do" method="post">

		<input type="hidden" name="sessionId" value="${ArcheryPractice.id }" />
		<input type="submit" value="Delete" />
	</form>


</body>
</html>