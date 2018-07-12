<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
               <h3>Seleccionar horario de partido</h3>
               <ul class="breadcrumb">
                  <li><a href="home">Home</a></li>
                  <li class="active">Seleccionar horario de partido</li>
               </ul>
            </div>
      </div>
      <section id="contant" class="contant main-heading team">
         <div class="row">
            <div class="container">
               <div class="contact">
                  <div class="col-md-6 col-md-offset-3">
                     <div class="contact-us">
						<form:form action="seleccionar-horario-partido" method="POST">
					    	<h3 class="form-signin-heading">Seleccionar rango horario para el partido de tu equipo 
					    	${horario.equipo.nombreEquipo} perteneciente a la fecha ${horario.fecha.id} 
					    	perteneciente al torneo ${horario.fecha.torneo.nombreTorneo}</h3>
							<hr class="colorgraph"><br>		
		
							<div class="form-group row">
							    <label for="horaInicio" class="col-sm-2 col-form-label">Desde</label>
							    <div class="col-sm-10">
							      <input path="horaInicio" name="horaInicio" id="horaInicio" type="datetime-local" class="form-control" placeholder="hora inicio" required/>
							    </div>
							</div>
							  
							<div class="form-group row">
							    <label for="horaFin" class="col-sm-2 col-form-label">Hasta</label>
							    <div class="col-sm-10">
							      <input path="horaFin" name="horaFin" id="horaFin" type="datetime-local" class="form-control" placeholder="hora fin" required />
							    </div>
							</div>
					 		<input type="hidden" value="${horario.id}" name="idHorario" id="idHorario"/> 
							<button class="btn btn-lg btn-primary btn-block" Type="Submit"/>Registrar horario</button>
						</form:form>
                        <c:if test="${not empty error}">
					        <h4><span>${error}</span></h4>
					        <br>
				        </c:if>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>

      <footer id="footer" class="footer">
        <%@include file="footer.jsp" %> 
      </footer>
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- ALL JS FILES -->
      <script src="js/all.js"></script>
      <!-- ALL PLUGINS -->
      <script src="js/custom.js"></script>
   </body>
</html>