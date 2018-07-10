<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <script>
	    function validacion() {
	    	document.getElementById("hayError").innerHTML = ""
	    	  if (document.getElementById("horaFin").value<document.getElementById("horaInicio").value) {
	    	    document.getElementById("hayError").innerHTML = "La hora de fin no puede ser menor a la hora de inicio.";
	    	    return false;
	    	  }
	    	  return true;
	    	}
	    </script>
		<style>
			div.alert:empty {
		 	  display: none;
			}
		</style>
	</head>
	<body>
	<%@include file="header.jsp" %>
		<div class="container fixHeader">
		</div>
		<div class = "container">
		

		<div id="hayError" class="alert alert-danger"></div>
		
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<form:form action="seleccionar-horario-partido" method="POST" onsubmit="return validacion()">
			    	<h3 class="form-signin-heading">Seleccionar rango horario para el partido</h3>
					<hr class="colorgraph">	

	<div class="form-group row">
    <label for="horaInicio" class="col-sm-2 col-form-label">Desde</label>
    <div class="col-sm-10">
      <input path="horaInicio" name="horaInicio" id="horaInicio" type="datetime-local" class="form-control" placeholder="hora inicio" min="${horaInicio}" max="${horaFin}" required/>
    </div>
  </div>
  
  	<div class="form-group row">
    <label for="horaFin" class="col-sm-2 col-form-label">Hasta</label>
    <div class="col-sm-10">
      <input path="horaFin" name="horaFin" id="horaFin" type="datetime-local" class="form-control" placeholder="hora fin" min="horaInicio" min="${horaInicio}" max="${horaFin}" required />
    </div>
  </div>

      		 <input type="hidden" value="${horario.id}" name="idHorario" id="idHorario"/> 

 	
					
					<button class="btn btn-lg btn-primary btn-block" Type="Submit" />Registrar horario</button>
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
