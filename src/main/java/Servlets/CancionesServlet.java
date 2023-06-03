package Servlets;

import Daos.CancionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CancionesServlet",urlPatterns = {"/CancionesServlet","/listaCanciones"})
    public class CancionesServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CancionDao cancionDao = new CancionDao();

        String action = request.getParameter("a") == null ? "canciones" : request.getParameter("a");

        switch (action) {
            case "canciones":
                request.setAttribute("listaCanciones", cancionDao.listaCanciones());
                request.getRequestDispatcher("listaCanciones.jsp").forward(request, response);
                break;
            case "cancionesBandas":
                String id2 = request.getParameter("id");
                request.setAttribute("listaCancionesBanda", cancionDao.listarCancionesBanda(id2));
                request.getRequestDispatcher("listaCancionesBanda.jsp").forward(request, response);
                break;
            case "anadir":
                String id = request.getParameter("id");
                request.setAttribute("anadir", cancionDao.listar(id));
                request.getRequestDispatcher("listaAnadir.jsp").forward(request, response);
                break;
        }
    }
}