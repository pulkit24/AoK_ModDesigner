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
			<h1>Test</h1>
			<p>Develop and preview the structure of the game</p>
		</section>
		<section class="row">
			<section class="span12">
				<section class="page-header">
					<h1>
						Realms <small>Control the realms in the game</small>
					</h1>
				</section>
			</section>
		</section>
		<section class="row">
			<section class="span6">
				<table class="table table-hover table-bordered">
					<tbody>
						<%
							Civilization[] civs = Civilizations.getCivilizations();
																																																															for(Civilization civ:civs){
						%>
						<tr>
							<td><%=civ.getName()%>
								<div class="btn-group pull-right">
									<a class="btn dropdown-toggle btn-mini" data-toggle="dropdown"
										href="#"> <i class="icon-wrench"></i><span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li><a tabindex="-1" href="#edit<%=civ.getId()%>"
											data-toggle="modal">Edit</a></li>
										<li><a tabindex="-1"
											href="#deleteConfirm<%=civ.getId()%>" data-toggle="modal">Delete</a></li>
									</ul>
								</div>
								<div id="edit<%=civ.getId()%>" class="modal hide fade"
									aria-labelledby="edit<%=civ.getId()%>Label" aria-hidden="true"
									role="dialog" tabindex="-1">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h3 id="edit<%=civ.getId()%>Label">
											Editing
											<%=civ.getName()%></h3>
									</div>
									<div class="modal-body">
										<p>Type in a new name for this realm.</p>
										<form class="form-inline">
											<input type="text" class="input-large"
												placeholder="<%=civ.getName()%>">
											<button type="submit" class="btn btn-primary">Submit</button>
										</form>
									</div>
									<div class="modal-footer">
										<a href="#" class="btn" data-dismiss="modal">Cancel</a>
									</div>
								</div>
								<div id="deleteConfirm<%=civ.getId()%>" class="modal hide fade"
									aria-labelledby="deleteConfirm<%=civ.getId()%>Label"
									aria-hidden="true" role="dialog" tabindex="-1">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h3 id="deleteConfirm<%=civ.getId()%>Label">
											Deleting
											<%=civ.getName()%></h3>
									</div>
									<div class="modal-body">
										<p>Are you sure you want to delete this realm?</p>
									</div>
									<div class="modal-footer">
										<a href="#" class="btn" data-dismiss="modal">No</a> <a
											href="#" class="btn btn-danger">Yes</a>
									</div>
								</div></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</section>
			<section class="span3">
				<h4 class="pull-right">
					<i class="icon-plus"></i> Add a realm
				</h4>
				<form class="form-horizontal" method="post" action="Controller">
					<div class="control-group">
						<label class="control-label" for="inputCivilizationName">Name</label>
						<div class="controls">
							<input type="text" id="inputCivilizationName" name="name"
								placeholder="Civilization Name" required>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>
					</div>
					<input type="hidden" name="o" value="add" /> <input type="hidden"
						name="i" value="civ" />
				</form>
			</section>
		</section>
	</section>
	<script>
		
	</script>
</body>
</html>