<%-- 
    Document   : listaAutos
    Created on : 4/07/2019, 08:07:52 PM
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
        <h1>Vehiculos</h1>
        <c:forEach var="a" items="${Vehiculos}">
            |${a.placa}||${a.modelo}||${a.propietario.id}|
            <td><img src="data:image/jpg;base64,${a.base64Img}" width="100" height="100" alt="Image not found"/></td>
            <a onclick="return confirm('Esta seguro?')" href="ConcesionarioServlet?action=deleteVehiculo&placa=${a.placa}">Eliminar</a>
            <hr/>
        </c:forEach>
    </body>
</html>
