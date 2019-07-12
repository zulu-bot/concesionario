<%-- 
    Document   : listVentas
    Created on : 5/07/2019, 06:14:03 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Ventas</h1>
        <c:forEach var="a" items="${Ventas}">
            |${a.factura}||${a.vehiculo.placa}||${a.cliente.id}|
            <a onclick="return confirm('Esta seguro?')" href="ConcesionarioServlet?action=deleteVenta&factura=${a.factura}">Eliminar</a>
            <hr/>
        </c:forEach>
    </body>
</html>
