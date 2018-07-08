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
		
		
				
				
		<form:form action="listado-fechas-torneo" method="POST">
			<select class='form-control' id='idTorneo' name='idTorneo' required>
				 <c:forEach items="${torneos}" var="entry">
					<option path="idTorneo" value='${entry.id}'>${entry.nombreTorneo}</option>
	      		 </c:forEach>
      		 </select>
      		 <button class="btn btn-success" Type="Submit"/>Buscar fechas pertenecientes al torneo</button>
      	</form:form>
      		 
 

		</div>
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>