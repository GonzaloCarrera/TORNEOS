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
			<c:if test="${not empty error}">
			        <h4><span>${error}</span></h4>
			        <br>
		        </c:if>	
		        
		        <h2 stye="text-align:center">Inscribirme a un torneo</h2>
	<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">Nombre del Torneo</th>
      <th scope="col">Descripción</th>
      <th scope="col">Equipos Inscriptos</th>
      <th scope="col">Opciones</th>
    </tr>
  </thead>

				 <c:forEach items="${torneos}" var="entry" varStatus="loop">
				  <tbody>
    <tr>
						<td>${entry.nombreTorneo}</td>
						<td>${entry.descripcionTorneo}</td>
						<td>${equiposIncriptos[loop.index]}/${entry.cantidadDeEquipos}</td>
						
						
						<c:if test="${validarCantidadDeEquiposRegistradosEnElTorneo[loop.index]>0}">
			        <td><span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Ya tenes un equipo registrado en este torneo">
  <button class="btn btn-secondary" style="pointer-events: none;" type="button" disabled>Registrarse</button>
</span></td>
		        </c:if>	
						
						<c:if test="${validarCantidadDeEquiposRegistradosEnElTorneo[loop.index]<=0}">
						<td><a href='seleccionar-equipo-torneo?idTorneo=<c:out value="${entry.id}" />&idUsuario=<c:out value="${user.id}" />' class="btn btn-success" role="button" >
      		 Registrarse</a></td>
      		 </c:if>
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