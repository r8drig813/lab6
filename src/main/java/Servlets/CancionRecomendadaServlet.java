package Servlets;

import Daos.CancionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CancionRecomendadaServlet",urlPatterns = {"/CancionRecomendadaServlet","/listaRecomendados"})
public class CancionRecomendadaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CancionDao cancionDao = new CancionDao();
        request.setAttribute("lista",cancionDao.listarRecomendados());
        request.getRequestDispatcher("/listaRecomendados.jsp").forward(request,response);
    }
}