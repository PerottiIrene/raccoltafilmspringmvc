<!doctype html>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="it" class="h-100">
<head>

<!-- Common imports in pages -->
<jsp:include page="../header.jsp" />

<title>Visualizza Elemento</title>
</head>
<body class="d-flex flex-column h-100">

	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp"></jsp:include>


	<!-- Begin page content -->
	<main class="flex-shrink-0">
		<div class="container">

			<div class='card'>
				<div class='card-header'>
					<h5>Visualizza dettaglio</h5>
				</div>


				<div class='card-body'>
					<dl class="row">
						<dt class="col-sm-3 text-right">titolo</dt>
						<dd class="col-sm-9">${delete_film_attr.titolo}</dd>
					</dl>

					<dl class="row">
						<dt class="col-sm-3 text-right">genere:</dt>
						<dd class="col-sm-9">${delete_film_attr.genere}</dd>
					</dl>

					<dl class="row">
						<dt class="col-sm-3 text-right">Data di pubblicazione :</dt>
						<dd class="col-sm-9"><fmt:formatDate type="date" value = "${delete_film_attr.dataPubblicazione}" /></dd>
					</dl>

					<dl class="row">
						<dt class="col-sm-3 text-right">minuti durata:</dt>
						<dd class="col-sm-9">${delete_film_attr.minutiDurata}</dd>
					</dl>
					
					
				</div>

				<div class='card-footer'>
					<form action="${pageContext.request.contextPath}/film/executeDelete" method="post">
					<input type="hidden" name="idFilm" value="${delete_film_attr.id}">
					 	<button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary">Conferma eliminazione</button>
					 	
					 	<a href="${pageContext.request.contextPath}/film/list" class='btn btn-outline-secondary'
						style='width: 80px'> <i class='fa fa-chevron-left'></i> Back
						</a>
					</form>
					
					
						 

				</div>
				<!-- end card -->
			</div>


			<!-- end container -->
		</div>

	</main>

	<!-- Footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>