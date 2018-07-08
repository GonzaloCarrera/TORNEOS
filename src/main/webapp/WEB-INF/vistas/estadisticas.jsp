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
		
		<h2 style="text-align:center;">
		${torneo.nombreTorneo}<br/>
		${torneo.descripcionTorneo}</h2>
		<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Equipo</th>
      <th scope="col">Puntos</th>
      <th scope="col">PJ</th>
      <th scope="col">PG</th>
      <th scope="col">PE</th>
      <th scope="col">PP</th>
      <th scope="col">GF</th>
      <th scope="col">GC</th>
      <th scope="col">DG</th>
    </tr>
  </thead>
  
				 <c:forEach items="${rank}" var="entry">
				  <tbody>
    <tr>
						<td scope="row">
<c:set var="numberOfRows" value="${numberOfRows+1}"/>
<c:out value="${numberOfRows}"/></td>
						<td>${entry.equipo.nombreEquipo}</td>
						<td>${entry.puntos }</td>
						<td>${entry.partidosGanados+entry.partidosEmpatados+entry.partidosPerdidos}</td>
						<td>${entry.partidosGanados}</td>
						
						<td>${entry.partidosEmpatados}</td>
						
						<td>${entry.partidosPerdidos}</td>
						
						<td>${entry.golesAFavor}</td>
						
						<td>${entry.golesEnContra}</td>
						<td>${entry.golesAFavor-entry.golesEnContra}</td>
						

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