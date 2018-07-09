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
      <th scope="col">Nombre del Torneo</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Equipos Inscriptos</th>
      <th scope="col">Estado</th>
      <th scope="col">Estadisticas</th>
    </tr>
  </thead>
  
				 <c:forEach items="${torneos}" var="entry" varStatus="loop">
				  <tbody>
    <tr>
						<td>${entry.nombreTorneo}</td>
						<td>${entry.descripcionTorneo}</td>
						<td>${equiposIncriptos[loop.index]}/${entry.cantidadDeEquipos}</td>
						<td>${entry.estado}</td>
						<td><a href='estadisticas?idTorneo=<c:out value="${entry.id}" />' class="btn btn-success" role="button">
      		 Ver Tabla de Posiciones</a></td>
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