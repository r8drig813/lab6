package Servlets;

import Daos.CancionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CancionesFavoritos",urlPatterns = {"/CancionesFavoritos","/listaFavoritos"})
public class CancionesFavoritos extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CancionDao cancionDao = new CancionDao();

        String action = request.getParameter("a") == null ? "favoritos" : request.getParameter("a");

        switch (action) {
            case "favoritos":
                request.setAttribute("listaCanciones", cancionDao.listaCanciones());
                request.getRequestDispatcher("/listaFavoritos.jsp").forward(request, response);
                break;
        }
    }
}