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
		
		
				
				<h2 style="text-align:center">Fechas en preparación</h2>
				<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">Fecha</th>
      <th scope="col">Torneo</th>
       <th scope="col">Descripción del Torneo</th>
      <th scope="col">Seleccionaron Horario</th>
      <th scope="col">Opciones</th>
    </tr>
  </thead>

				 <c:forEach items="${fechas}" var="entry" varStatus="loop">
				  <tbody>
    <tr>
						<td>${fechaNumero[loop.index]}</td>
						<td>${entry.torneo.nombreTorneo}</td>
						<td>${entry.torneo.descripcionTorneo}</td>
						<td>${cantidadDeEquiposQueSeleccionaronHorario[loop.index]}/${entry.torneo.cantidadDeEquipos}</td>
												<td><a
									href='machear-fecha?idTorneo=<c:out value="${entry.torneo.id}" />'
									class="btn btn-success" role="button"> Machear
								</a></td>
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