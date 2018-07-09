<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	</head>
	<body>
	<%@include file="header.jsp" %>
		<div class="container fixHeader">
		</div>
		<div class = "container">
		
		

				
				<table class="table table-sm">
  <thead>
    <tr>
       <th scope="col">Fecha</th>
      <th scope="col">Horario</th>
      <th scope="col">Partido</th>
	  <th scope="col">Torneo</th>
	  <th scope="col">Descripcion</th>
	  <th scope="col">Cupo de Equipos</th>
    </tr>
  </thead>
				<h2 style="text-align:center">Proximos partidos</h2>
				 <c:forEach items="${partidos}" var="entry" varStatus="loop">
				  <tbody>
    <tr>
						<td>${fechaNumero[loop.index]}</td>
						<td>${entry.horario}</td>
						<td>${entry.equipo1.nombreEquipo} vs ${entry.equipo2.nombreEquipo}</td>
						<td>${entry.fecha.torneo.nombreTorneo}</td>
						<td>${entry.fecha.torneo.descripcionTorneo}</td>
						<td>${entry.fecha.torneo.cantidadDeEquipos}</td>
						    </tr>
  </tbody>
	      		 </c:forEach>

</table>

      		 
 
		</div>
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>