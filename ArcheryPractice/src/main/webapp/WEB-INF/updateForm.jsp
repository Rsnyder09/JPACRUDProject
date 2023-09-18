<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Archery Practice Update</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>



	<div class="header">
	<h1>Update session</h1>
	<p>"*" indicates required fields</p>
	</div>
	<br>

	<form action="update.do" method="post">
	<input type="hidden" name="id" id="id" value="${ArcheryPractice.id }">

		<label for="date">*Date</label>
		
		<input type="text" name="date" id="date" value=${ArcheryPractice.date }  >
		<br>
		<br>
		<label for="duration">Duration</label>
		<input type="number" name="duration" id="duration" value=${ArcheryPractice.duration }>
		<br>
		<br>
		<label for="arrowsShot">*Arrows Shot</label>
		<input type="number" name="arrowsShot" id="arrowsShot" required value=${ArcheryPractice.arrowsShot } >
		<br>
		<br>
		
		<label for="coffee">cups of coffee before</label>
				<input type="number" name="coffee" id="coffee" value=${ArcheryPractice.coffee }>

		 
		
		<br>
		<br>
		<label for="bullseye">How many bullseyes did you get?</label>
		<input type="number" name="bullseye" id="bullseye" value=${ArcheryPractice.bullseye }>
		<br>
		<br>
		<label for="location">*Location</label>
		<input type="text" name="location" id="location" required value=${ArcheryPractice.location } >
		<br>
		<br>
		<label for="temperature">What was the temperature in Fahrenheit?</label >
		<input type="number" name="temperature" id="temperature" value=${ArcheryPractice.temperature }>
		
		<br>
		<br>
		<input type="submit" />
		
	</form>
		<br>
		<br>
<a href="home.do">Go back to home</a>


</body>
</html>