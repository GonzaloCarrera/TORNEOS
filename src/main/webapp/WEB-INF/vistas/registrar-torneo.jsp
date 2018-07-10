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
		
		
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<form:form action="registrar-torneo" method="POST" modelAttribute="torneo">
			    	<h2 style="text-align:center">Registrar torneo</h2>
					<hr class="colorgraph"><br>		
					
	<div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Nombre del Torneo</label>
    <div class="col-sm-10">
      <form:input path="nombreTorneo" id="nombreTorneo" type="text" class="form-control" placeholder="Nombre del torneo" />
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Descripci�n</label>
    <div class="col-sm-10">
      <form:input path="descripcionTorneo" type="text" id="descripcionTorneo" class="form-control"  placeholder="Descripcion del torneo"/>    
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Cantidad de Equipos</label>
    <div class="col-sm-10">
      <form:input path="cantidadDeEquipos" type="number" id="cantidadDeEquipos" class="form-control" placeholder="Cupos m�ximos" min="3" max="50"/>   
    </div>
  </div>		
					
					<button class="btn btn-lg btn-success btn-block" Type="Submit"/>Registrar torneo</button>
				</form:form>

				<%--Bloque que es visible si el elemento error no está vacío	--%>
				<c:if test="${not empty error}">
			        <h4><span>${error}</span></h4>
			        <br>
		        </c:if>	
			</div>
		</div>
		
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>
