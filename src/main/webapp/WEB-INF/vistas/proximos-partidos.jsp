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
      <th scope="col">id</th>
      <th scope="col">Horario</th>
      <th scope="col">Equipos</th>
	  <th scope="col">Fecha</th>
	  <th scope="col">Torneo</th>
    </tr>
  </thead>

				 <c:forEach items="${partidos}" var="entry">
				  <tbody>
    <tr>
						<td>${entry.id}</td>
						<td>${entry.horario}</td>
						<td>${entry.equipo1.nombreEquipo} vs ${entry.equipo2.nombreEquipo}</td>
						<td>${entry.fecha.id}</td>
						<td>${entry.fecha.torneo.nombreTorneo}</td>
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