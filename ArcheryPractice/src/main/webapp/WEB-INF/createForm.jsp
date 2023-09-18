<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Archery Practice Create</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<div class="header">
	<h1>Create session</h1>
	<p>"*" indicates required fields</p>
	</div>
	<br>

	<form action="create.do" method="post" name="sessionId">
	



		<label for="date">*Date</label>
		<input type="date" name="date" id="date" required value="08-03-1990">
		<br>
		<br>
		<label for="duration">Duration</label>
		<input type="number" name="duration" id="duration" value="0">
<br>
		<br>
		<label for="arrowsShot">*Arrows Shot</label>
		<input type="number" name="arrowsShot" id="arrowsShot" required value="0">
		<br>
		<br>
		<label for="coffee">cups of coffee before</label>
		<input type="number" name="coffee" id="coffee" value="0">

		 
		<br>
		<br>
		<label for="bullseye">How many bullseyes did you get?</label>
		<input type="number" name="bullseye" id="bullseye" value="0">
<br>
		<br>
		<label for="location">*Location</label>
		<input type="text" name="location" id="location" required value="Anywhere">
		<br>
		<br>
		<label for="temperature">What was the temperature in fahrenheit?</label>
		<input type="number" name="temperature" id="temperature" value="0">
		
		<br>
		<br>
		<input type="submit" />
		
	</form>
		<br>
		<br>
<a href="home.do">Go back to home</a>

</body>
</html>