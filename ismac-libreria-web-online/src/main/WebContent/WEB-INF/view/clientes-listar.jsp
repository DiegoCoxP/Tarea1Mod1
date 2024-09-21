<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Clientes - Sistema Libreria</title>
	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>


<nav></nav>


<section class="px-5 py-5">
	<h1>Clientes</h1>
	
	
	<div class="container text-center my-3">
	    <button class="btn btn-primary" onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?opcion=1'; return false;">
	    	<i class="fa-solid fa-user-plus"></i> Agregar Cliente
	    </button>
	</div>


	<div class="table-responsive">
		<table id="clientesTable" 
			class="table table-striped table-sm"
			data-search="true" 
			data-pagination="true">
			<thead class="table-dark">
				<tr>
					<th data-field="idCliente" data-sortable="true">ID Cliente</th>
					<th data-field="cedula" data-sortable="true">Cédula</th>
					<th data-field="nombre" data-sortable="true">Nombre</th>
					<th data-field="apellido" data-sortable="true">Apellido</th>
					<th data-field="direccion" data-sortable="true">Dirección</th>
					<th data-field="telefono" data-sortable="true">Teléfono</th>
					<th data-field="correo" data-sortable="true">Correo</th>
					<th data-field="acciones" data-sortable="true">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${clientes}">
					<tr>
						<td>${item.idCliente}</td>
						<td>${item.cedula}</td>
						<td>${item.nombre}</td>
						<td>${item.apellido}</td>
						<td>${item.direccion}</td>
						<td>${item.telefono}</td>
						<td>${item.correo}</td>
						<td>
							<button class="btn btn-success" onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?idCliente=${item.idCliente}&opcion=1'; return false;">
								<i class="fa-solid fa-arrows-rotate"></i> Actualizar
							</button>
							<button class="btn btn-danger" onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?idCliente=${item.idCliente}&opcion=2'; return false;">
								<i class="fa-solid fa-trash-can"></i> Eliminar
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</section>
	

	<footer></footer>
	
	<!-- Scripts de Bootstrap y jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		// Inicializar la tabla con Bootstrap
		$(document).ready(function(){
		    $('#clientesTable').bootstrapTable();
		});
	</script>

</body>
</html>
