<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>

		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<link href="css/bootstrap.min.css" rel="stylesheet">
		</head>

		<body>
		
		
			<nav class="navbar navbar-expand-lg navbar-dark bg-success" >
				<a class="navbar-brand" href="#">Torneos de Futbol</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				 aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<c:set var="user" value="${user}" scope="session" />
				<c:if test="${not empty user.username}">
					<c:if test="${!user.esAdmin}">
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item">
									<a href='mis-torneos?idUsuario=<c:out value="${user.id}" />' class="nav-link">
										Mis torneos </a>
								</li>
								<li class="nav-item">
									<a href='registrar-equipo' class="nav-link"> Registrar Equipo </a>
								</li>
								<li class="nav-item">
									<a href='listado-torneo-inscripcion-abierta' class="nav-link"> Inscribirme a torneo </a>
								</li>
								<li class="nav-item">
									<a href='seleccionar-horario?idUsuario=<c:out value="${user.id}" />' class="nav-link">
										Seleccionar Horario </a>
								</li>
								<li class="nav-item">
									<a href='proximos-partidos?idUsuario=<c:out value="${user.id}" />' class="nav-link">
										Proximos partidos </a>
								</li>
								</ul>
								<ul class="navbar-nav ml-auto">
								<li>
										<span class="nav-link">Bienvenido, ${user.username}.</span>
									</li>
									<li class="nav-item">
										<a href='logout' class="nav-link">Logout</a>
								</li>
							</ul>
						</div>
					</c:if>
					<c:if test="${user.esAdmin}">
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto" style="color:red;">
								<li class="nav-item">
									<a href='registrar-torneo' class="nav-link"> Registrar torneo </a>
								</li>
								<li class="nav-item">
									<a href='torneos-en-curso' class="nav-link"> Torneos en curso </a>
								</li>
								<li class="nav-item">
									<a href='iniciar-fecha' class="nav-link"> Iniciar fecha </a>
								</li>
								<li class="nav-item">
									<a href='fechas-en-preparacion' class="nav-link"> Fechas en preparacion </a>
								</li>
								<li class="nav-item">
									<a href='fechas-en-curso' class="nav-link"> Fechas en curso </a>
								</li>
								</ul>
								<ul class="navbar-nav ml-auto">
								<li>
										<span class="nav-link">Bienvenido, ${user.username}.</span>
									</li>
									<li class="nav-item" >
										<a href='logout' class="nav-link">Logout</a>
									</li>
							</ul>	

							</div>
					</c:if>
				</c:if>




				<c:if test="${empty user.username}">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a href='registrar' class="nav-link">
							Registrarse</a>
					</li>
					<li class="nav-item">
						<a href='login' class="nav-link">
							Login</a>
					</li>
					</ul>
					</div>
				</c:if>


			</nav>




		</body>

		</html>