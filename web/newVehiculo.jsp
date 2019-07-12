<%-- 
    Document   : newVehiculos
    Created on : 5/07/2019, 06:31:30 PM
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
            <form action="ConcesionarioServlet?action=insertV" method="post" enctype="multipart/form-data">
                <table>
                     <tr>
                        <th><label><b>Placa</b></label></th>
                        <th><input type="text" placeholder="Ingrese el numero" name="placa" required=""/></th>
                    </tr>
                    <tr>
                        <th><label><b>Modelo</b></label></th>
                        <th><input type="text" placeholder="Ingrese el año" name="modelo" required=""/></th>
                    </tr>
                    <tr>
                        <th><label><b>Propietario</b></label></th>
                        <th><input type="text" placeholder="Ingrese la identificacion" name="propietario" required=""/></th>
                    </tr>
                    <tr>
                        <th><label><b>Imagen vehiuculo</b></label></th>
                        <th> <input type="file" name="imagen" required="required"/><br/><br/></th>
                    </tr>
                    <div class="break"></div>
                    <tr>
                        <td colspan="2">
                            <input class="btn btn-info btn-lg" type="submit" name="insertv" value="crear">
                    </tr>
                </table>
            </form>
        </div>
        
    </body>
</html>
