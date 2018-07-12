<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
   <!-- Basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
   <title>Fulbito</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <link rel="shortcut icon" href="" type="image/x-icon" />
   <link rel="apple-touch-icon" href="">
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/colors.css">
   <link rel="stylesheet" href="css/versions.css">
   <link rel="stylesheet" href="css/responsive.css">
   <link rel="stylesheet" href="css/custom.css">
   <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
   <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
   </head>
   <body class="game_info" data-spy="scroll" data-target=".header">
      <!-- LOADER -->
      <div id="preloader">
         <img class="preloader" src="images/loading-img.gif" alt="">
      </div>
      <%@include file="header.jsp" %>
      <div class="inner-information-text">
            <div class="container">
               <h3>Horario registrado</h3>
               <ul class="breadcrumb">
                  <li><a href="home">Home</a></li>
                  <li class="active">Horario registrado</li>
               </ul>
            </div>
      </div>
      <section id="contant" class="contant main-heading team">
         <div class="row">
            <div class="container">
				<h1>Seleccionastes un rango horario de ${horario.horaInicio } a ${horario.horaFin }
				para el partido correspondiente a la fecha ${horario.fecha.id } del torneo ${horario.fecha.torneo.nombreTorneo }</h1>
            </div>
         </div>
      </section>

      <footer id="footer" class="footer">
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                  <div class="full">
                     <div class="footer-widget">
                        <div class="footer-logo">
                           <a href="#"><img src="images/footer-logo.png" alt="#" /></a>
                        </div>
                        <p>Nuestros eventos son los mejores organizados del pais.</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-2">
                  <div class="full">
                     <div class="footer-widget">
                        <h3>Menu</h3>
                        <ul class="footer-menu">
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
			                                          <li><a href="fechas-en-preparaciono">Fechas en preparacion</a></li>
			                                          <li><a href="fechas-en-curso">Fechas en curso</a></li>
			                                        
												</c:if>
											 </c:if>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-md-3">
                  <div class="full">
                     <div class="footer-widget">
                        <h3>Contactenos</h3>
                        <ul class="address-list">
                           <li><i class="fa fa-map-marker"></i> Telefono y correo..</li>
                           <li><i class="fa fa-phone"></i> 123 456 7890</li>
                           <li><i style="font-size:20px;top:5px;" class="fa fa-envelope"></i> fulbito@gmail.com</li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="footer-bottom">
            <div class="container">
               <p>Copyright © 2018 Grupo Rusia</p>
            </div>
         </div>
      </footer>
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- ALL JS FILES -->
      <script src="js/all.js"></script>
      <!-- ALL PLUGINS -->
      <script src="js/custom.js"></script>
   </body>
</html>
