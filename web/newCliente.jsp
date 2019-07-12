<%-- 
    Document   : newCliente
    Created on : 5/07/2019, 02:18:31 PM
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
        <div class="container well">
            <form action="ConcesionarioServlet?action=insertC" method="post">
                <table>
                     <tr>
                        <th><label><b>Identificacion</b></label></th>
                        <th><input type="text" placeholder="Ingrese identificacion" name="id" required=""/></th>
                    </tr>
                    <tr>
                        <th><label><b>Nombre</b></label></th>
                        <th><input type="text" placeholder="Ingrese nombre" name="nombre" required=""/></th>
                    </tr>
                     <tr>
                        <th><label><b>Correo</b></label></th>
                        <th><input type="text" placeholder="Ingrese correo" name="correo" required=""/></th>
                    </tr>
                     <tr>
                        <th><label><b>telefono</b></label></th>
                        <th><input type="text" placeholder="Ingrese telefono" name="telefono" required=""/></th>
                    </tr>
                     <tr>
                        <th><label><b>Vehiculo</b></label></th>
                        <th><input type="text" placeholder="Ingrese placa" name="vehiculo" required=""/></th>
                    </tr>
                    <div class="break"></div>
                    <tr>
                        <td colspan="2">
                            <input class="btn btn-info btn-lg" type="submit" name="insertC" value="crear"> 
                       
                    </tr>
                </table>
            </form>
        </div>
        
    </body>
</html>
