<%@page import="components.Lister"%>
<%@page import="model.Civilizations"%>
<%@page import="model.beans.Civilization"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ToME Design</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<section class="container">
		<nav class="navbar">
			<section class="navbar-inner">
				<a class="brand" href="#">ToME</a>
				<ul class="nav">
					<li class="active"><a href="#">Civilizations</a></li>
					<li><a href="#">Buildings</a></li>
					<li><a href="#">Units</a></li>
					<li><a href="#">Techs</a></li>
				</ul>
			</section>
		</nav>
		<section class="hero-unit">
			<h1>Tales of Middle-Earth</h1>
			<p>Develop and preview the structure of the game</p>
		</section>
		<section class="row">
			<section class="span3">
				<h4>Select a civilization</h4>
				<ul class="nav nav-tabs nav-stacked">
					<%
						/* Show all civs */
						Civilization[] civs = Civilizations.getCivilizations();
					%>
					<%=Lister.toList("<li><a href='#'>", civs, "</a></li>")%>
				</ul>
			</section>
			<section class="span9">
				<section class="page-header">
					<h1>
						Civilizations <small>Add new civilizations</small>
					</h1>
				</section>
				<form class="form-horizontal">
					<div class="control-group">
						<label class="control-label" for="inputCivilizationName">Name</label>
						<div class="controls">
							<input type="text" id="inputCivilizationName" placeholder="Civilization Name">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn">Add</button>
						</div>
					</div>
				</form>
			</section>
		</section>
	</section>
</body>
</html>