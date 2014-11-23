<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame 
       Remove this if you use the .htaccess -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>SAMPLE</title>
<meta name="description" content="">
<meta name="author" content="Bohan Zheng">

<meta name="viewport" content="width=device-width; initial-scale=1.0">
</head>
<body>
<form action="SparqlServer" method="get" id="red"></form>
	<script>
		window.onload = function () {
			document.getElementById("red").submit();
		};
	</script>
</body>
</html>