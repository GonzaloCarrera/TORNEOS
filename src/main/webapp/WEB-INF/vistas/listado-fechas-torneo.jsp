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
		
		

 

FECHAS PERTENECIENTES AL TORNEO
								      	
						      	
	<table class="table table-sm">
  <thead>
    <tr>
   	  <th scope="col">Fecha</th>
      <th scope="col">idFecha</th>
      <th scope="col">estado</th>
      <th scope="col">t.nombreTorneo</th>
      <th scope="col">t.cantidadDeEquipos</th>
      <th scope="col">t.estado</th>
    </tr>
  </thead>
  
  	<c:set var="numberOfRows" value="0"/>	
  <c:forEach var="entry" items="${fechas}">
  <tbody>
    <tr>
    <th scope="row">
<c:set var="numberOfRows" value="${numberOfRows+1}"/>
<c:out value="${numberOfRows}"/></th>
      <td>${entry.id}</td>
      <td>${entry.estado}</td>
      <td>${entry.torneo.nombreTorneo}</td>
      <td>${entry.torneo.cantidadDeEquipos}</td>
      <td>${entry.torneo.estado}</td>
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