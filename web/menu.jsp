<%-- 
    Document   : menu
    Created on : 5/07/2019, 03:18:49 PM
    Author     : Daniel
--%>

<%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty estado}">
    |<a href="ConcesionarioServlet?action=listClientes">Clientes</a>|
    |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>
    |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|
</c:if>
    
<c:if test="${estado == 'inicio'}">
    |<a href="ConcesionarioServlet?action=listClientes">Clientes</a>|
    |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>
    |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|
</c:if>
    
<c:if  test="${estado == 'listClientes'}">
        |<a href="ConcesionarioServlet?action=inicio">Inicio</a>|
        |<a href="ConcesionarioServlet?action=insertClientes">Nuevo</a>|
        |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>|
        |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|
               
</c:if>

<c:if  test="${estado == 'insertClientes'}">
        |<a href="ConcesionarioServlet?action=inicio">Inicio</a>|
        |<a href="ConcesionarioServlet?action=listClientes">clientes</a>|
        |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>|
        |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|
        
</c:if> 
        
<c:if test="${estado =='listVehiculos'}">
        |<a href="ConcesionarioServlet?action=inicio">Inicio</a>|
        |<a href="ConcesionarioServlet?action=insertVehiculos">Nuevo</a>|
        |<a href="ConcesionarioServlet?action=listClientes">Clientes</a>|
        |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|
        |<a href="buscarVehiculo.jsp">Buscar</a>|        
</c:if>

<c:if  test="${estado == 'insertVehiculos'}">
        |<a href="ConcesionarioServlet?action=inicio">Inicio</a>|
        |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>|
        |<a href="ConcesionarioServlet?action=listClientes">Clientes</a>|
        |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|
        |<a href="buscarVehiculo.jsp">Buscar</a>|
</c:if>

<c:if test="${estado =='listVentas'}">
        |<a href="ConcesionarioServlet?action=inicio">Inicio</a>|
        |<a href="ConcesionarioServlet?action=insertVentas">Nuevo</a>|
        |<a href="ConcesionarioServlet?action=listClientes">Clientes</a>|
        |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>|
               
</c:if>

<c:if test="${estado =='insertVentas'}">
        |<a href="ConcesionarioServlet?action=inicio">Inicio</a>|
        |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|
        |<a href="ConcesionarioServlet?action=listClientes">Clientes</a>|
        |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>|
                
</c:if>

 
<c:if test="${estado =='buscarVehiculo'}">
        |<a href="ConcesionarioServlet?action=inicio">Inicio</a>|
        |<a href="ConcesionarioServlet?action=insertVehiculos">Nuevo</a>|
        |<a href="ConcesionarioServlet?action=listClientes">Clientes</a>|
        |<a href="ConcesionarioServlet?action=listVehiculos">Vehiculos</a>|
        |<a href="ConcesionarioServlet?action=listVentas">Ventas</a>|    
</c:if>
