<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Sistema Librería - Eliminar Cliente</title>

	<!-- Enlaces a Bootstrap y estilos adicionales -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>


<section class="px-5 py-5">
	<div class="container">
		<h1>Eliminar Cliente</h1>
		
		
		<form action="del" method="get">
			<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />
			<p><strong>¿Desea eliminar el cliente?</strong></p>
			<br/>
			
			
			<button class="btn btn-danger" type="submit">
				<i class="fa-solid fa-trash-can"></i> Eliminar
			</button>
			<button class="btn btn-secondary" type="button" onclick="window.location.href='/ismac-libreria-web-online/clientes/findAll'; return false;">
				<i class="fa-solid fa-times"></i> Cancelar
			</button>
		</form>
	</div>
</section>	


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
