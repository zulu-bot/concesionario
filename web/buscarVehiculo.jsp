<%-- 
    Document   : buscarVehiculo
    Created on : 6/07/2019, 11:22:19 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Hello World!</h1>
        <div class="container well">
            <form action="ConcesionarioServlet?action=buscarVehiculo" method="post">
                <table>
                    <tr>
                        <th><label><b>Placa</b></label></th>
                        <th><input type="text" placeholder="Ingrese el numero" name="placa" required=""/></th>
                    </tr>
                    <div class="break"></div>
                    <tr>
                        <td colspan="2">
                            <input class="btn btn-info btn-lg" type="submit" name="buscarVehiculo" value="buscar">
                    </tr>
                </table>
            </form>
            
        </div>
        
    </body>
</html>
