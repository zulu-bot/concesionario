/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.ClientesFacade;
import com.udea.ejb.ClientesFacadeLocal;
import com.udea.ejb.VehiculosFacadeLocal;
import com.udea.ejb.VentasFacadeLocal;
import com.udea.entity.Clientes;
import com.udea.entity.Vehiculos;
import com.udea.entity.Ventas;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Base64;
        
/**
 *
 * @author Daniel
 */
 
@MultipartConfig
public class ConcesionarioServlet extends HttpServlet {

    @EJB
    private VentasFacadeLocal ventasFacade;

    @EJB
    private VehiculosFacadeLocal vehiculosFacade;

    @EJB
    private ClientesFacadeLocal clientesFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            String action = request.getParameter("action");
            String url = "index.jsp";
            if("listClientes".equals(action)){
                List<Clientes> findAll = clientesFacade.findAll();
                request.getSession().setAttribute("Clientes", findAll);
                request.getSession().setAttribute("estado", "listClientes");
                url = "listClientes.jsp";
            }
            if("insertClientes".equals(action)){
                request.getSession().setAttribute("estado", "insertClientes");
                url = "newCliente.jsp";
            }
            if("insertC".equals(action)){
                Clientes a = new Clientes();
                a.setId(Integer.valueOf(request.getParameter("id")));
                a.setNombre(request.getParameter("nombre"));
                a.setTelefono(Integer.valueOf(request.getParameter("telefono")));
                a.setCorreo(request.getParameter("correo"));
                a.setVehiculo(request.getParameter("vehiculo"));
                clientesFacade.create(a);
                url = "ConcesionarioServlet?action=listClientes";
            }
            if("deleteCliente".equals(action)){
                String id = request.getParameter("id");
                Clientes a = clientesFacade.find(Integer.valueOf(id));
                clientesFacade.remove(a);
                request.getSession().setAttribute("estado", "listClientes");
                url = "ConcesionarioServlet?action=listClientes";
            }
            if("listVehiculos".equals(action)){
                List<Vehiculos> findAll = vehiculosFacade.findAll();
                request.getSession().setAttribute("Vehiculos", findAll);
                request.getSession().setAttribute("estado", "listVehiculos");
                url = "listVehiculos.jsp";
            }
            if("insertVehiculos".equals(action)){
                request.getSession().setAttribute("estado", "insertVehiculos");
                url = "newVehiculo.jsp";
            }
            if("insertV".equals(action)){
                Vehiculos a = new Vehiculos();
                a.setModelo(request.getParameter("modelo"));
                a.setPlaca(request.getParameter("placa"));
                String id = request.getParameter("propietario");
                Clientes b = clientesFacade.find(Integer.valueOf(id));
                a.setPropietario(b);
                BufferedImage image = ImageIO.read(request.getPart("imagen").getInputStream());
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                ImageIO.write(image, "jpg", outputStream);
                outputStream.flush();
                a.setImg(outputStream.toByteArray());
                vehiculosFacade.create(a);
                outputStream.close();
                url = "ConcesionarioServlet?action=listVehiculos";
            }
            if("deleteVehiculo".equals(action)){
                String placa = request.getParameter("placa");
                Vehiculos a = vehiculosFacade.find(placa);
                vehiculosFacade.remove(a);
                request.getSession().setAttribute("estado", "listVehiculos");
                url = "ConcesionarioServlet?action=listVehiculos";
            }
            if("listVentas".equals(action)){
                List<Ventas> findAll = ventasFacade.findAll();
                request.getSession().setAttribute("Ventas", findAll);
                request.getSession().setAttribute("estado", "listVentas");
                url = "listVentas.jsp";
            }
            if("insertVentas".equals(action)){
                request.getSession().setAttribute("estado", "insertVentas");
                url = "newVenta.jsp";
            }
            if("insertVe".equals(action)){
                Ventas a = new Ventas();
                String id = request.getParameter("cliente");
                Clientes b = clientesFacade.find(Integer.valueOf(id));
                a.setCliente(b);
                a.setFactura(Integer.valueOf(request.getParameter("factura")));
                String placa = request.getParameter("vehiculo");
                Vehiculos v = vehiculosFacade.find(placa);
                a.setVehiculo(v);
                ventasFacade.create(a);
                url = "ConcesionarioServlet?action=listVentas";
            }
            if("deleteVenta".equals(action)){
                String factura = request.getParameter("factura");
                Ventas a = ventasFacade.find(Integer.valueOf(factura));
                ventasFacade.remove(a);
                request.getSession().setAttribute("estado", "listVentas");
                url = "ConcesionarioServlet?action=listVentas";
            }
            if("buscarVehiculo".equals(action)){
                String placa = request.getParameter("placa");
                Vehiculos a = vehiculosFacade.find(placa);
                List<Vehiculos> find = new ArrayList<>();
                find.add(a);                
                request.getSession().setAttribute("Vehiculos", find);
                request.getSession().setAttribute("estado", "listVehiculos");
                url = "listVehiculos.jsp";
            }
            
            if("inicio".equals(action)){
                request.getSession().setAttribute("estado", "inicio");
            }
            response.sendRedirect(url);
        }finally{
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

