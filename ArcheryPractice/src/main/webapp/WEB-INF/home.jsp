<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Archery Practice Home</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<div class="header">
		<h1>Archery Practice Sessions</h1>
	</div>
	<br>
	<br>
	<form action="show.do" method="get">
		Session ID <input type="text" name="sessionId"><input
			type="submit" value="Show Session">

	</form>

	<br>
	<br>
	<form action="create.do" method="get">
		<input type="hidden" name="createForm" /> <input type="submit"
			value="Create new session" />

	</form>

	<br>
	<br>

	<a href="showall.do">Show all Practice Sessions</a>


</body>
</html>


