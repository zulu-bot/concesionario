<%-- 
    Document   : listClientes
    Created on : 5/07/2019, 03:18:36 PM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:include page="menu.jsp"></jsp:include>
        <h1>Clientes</h1>
        <c:forEach var="a" items="${Clientes}">
            |${a.id}||${a.nombre}||${a.telefono}||${a.correo}||${a.vehiculo}|
            <a onclick="return confirm('Esta seguro?')" href="ConcesionarioServlet?action=deleteCliente&id=${a.id}">Eliminar</a>
            <hr/>
        </c:forEach>
    </body>
</html>

