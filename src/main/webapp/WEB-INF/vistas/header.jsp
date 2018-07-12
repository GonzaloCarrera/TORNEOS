<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

		</html> --%>
		<section id="top">
         <header>
            <div class="container">
               <div class="header-top">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="full">
                           <div class="logo">
                              <a href="index.html"><img src="images/logo.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="right_top_section">
                           <!-- social icon -->
                           <ul class="social-icons pull-left">
                 
                           </ul>
                           <!-- end social icon -->
                           <!-- button section -->
                           <ul class="login">
                              <li class="login-modal">
                                 <a href="login" class="login"><i class="fa fa-user"></i>Logout</a>
                              </li>
                              <!-- <li>
                                 <div class="cart-option">
                                    <a href="#"><i class="fa fa-shopping-cart"></i>Register</a>
                                 </div>
                              </li> -->
                           </ul>
                           <!-- end button section -->
                        </div>
                     </div>
                  </div>
               </div>

                  <div class="row">
                     <div class="col-md-12">
                        <div class="full">
                           <div class="main-menu-section">
                              <div class="menu">
                                 <nav class="navbar navbar-inverse">
                                    <div class="navbar-header">
                                       <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                                       <span class="sr-only">Toggle navigation</span>
                                       <span class="icon-bar"></span>
                                       <span class="icon-bar"></span>
                                       <span class="icon-bar"></span>
                                       </button>
                                       <a class="navbar-brand" href="#">Menu</a>
                                    </div>
                                    <div class="collapse navbar-collapse js-navbar-collapse">
                                       <ul class="nav navbar-nav">
                                       	 <c:set var="user" value="${user}" scope="session" />
											<c:if test="${not empty user.username}">
												<c:if test="${!user.esAdmin}">
			                                          <li class="active"><a href="mis-torneos?idUsuario=<c:out value="${user.id}" />">Mis torneos</a></li>
			                                          <li><a href="registrar-equipo">Registrar Equipo</a></li>
			                                          <li><a href="listado-torneo-inscripcion-abierta?idUsuario=<c:out value="${user.id}" />">Inscribirme a torneo</a></li>
			                                          <li><a href="seleccionar-horario?idUsuario=<c:out value="${user.id}" />">Seleccionar Horario</a></li>
			                                          <li><a href="proximos-partidos?idUsuario=<c:out value="${user.id}" />">Proximos partidos</a></li>
			                                   	</c:if>
			                                   	<c:if test="${user.esAdmin}">
		                                          <li class="active"><a href="registrar-torneo">Registrar torneo</a></li>
			                                          <li><a href="iniciar-fecha">Iniciar fecha</a></li>
			                                          <li><a href="fechas-en-preparacion">Fechas en preparacion</a></li>
			                                          <li><a href="fechas-en-curso">Fechas en curso</a></li>
			                                        
												</c:if>
											 </c:if>
                                       </ul>
                                    </div>
                                    <!-- /.nav-collapse -->
                                 </nav>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            
         </header>
         <div class="inner-page-bannerMain">
            <div class="container">
                     <div class="carousel-caption">
                        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"></div>
                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                           <div class="slider-contant">
                              <h3><br>Fulbito <span class="color-yellow">Nueva App</span><br>Gana!</h3>
                           </div>
                        </div>
                     </div>
            
            </div>
         </div>
      </section>