<%-- 
    Document   : newVenta
    Created on : 5/07/2019, 06:34:52 PM
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
            <form action="ConcesionarioServlet?action=insertVe" method="post">
                <table>
                     <tr>
                        <th><label><b>Numero</b></label></th>
                        <th><input type="text" placeholder="Ingrese el numero de factura" name="factura" required=""/></th>
                    </tr>
                    <tr>
                        <th><label><b>Vehiculo</b></label></th>
                        <th><input type="text" placeholder="Ingrese la placa" name="vehiculo" required=""/></th>
                    </tr>
                     <tr>
                        <th><label><b>Cliente</b></label></th>
                        <th><input type="text" placeholder="Ingrese la identificacion" name="cliente" required=""/></th>
                    </tr>
                     
                    <div class="break"></div>
                    <tr>
                        <td colspan="2">
                            <input class="btn btn-info btn-lg" type="submit" name="insertVe" value="crear">
                       
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
