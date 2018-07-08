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

				Cargar resultados
				
				<c:if test="${not empty error}">
			        <h4><span>${error}</span></h4>
			        <br>
		        </c:if>	
				
				<c:if test="${empty error }">
				<form:form action="cargar-resultados" method="POST">
				<input type="number" name="golesEquipo1" id="golesEquipo1" placeholder="Goles equipo 1" min=0 max=99 required/> 
			<select id='idPartido' name='idPartido' required>
				 <c:forEach items="${partidos}" var="entry">
					<option name="idPartido" value='${entry.id}'>${entry.equipo1.nombreEquipo} vs ${entry.equipo2.nombreEquipo}</option>
	      		 </c:forEach>
      		 </select>
      		 <input type="number" name="golesEquipo2" id="golesEquipo2" placeholder="Goles equipo 2" min=0 max=99 required/> 
      		 <button class="btn btn-success" Type="Submit"/>Cargar resultado</button>
      	</form:form>
      	</c:if>


      		 
 
		</div>
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>