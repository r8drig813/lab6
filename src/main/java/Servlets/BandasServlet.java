package Servlets;

import Beans.Banda;
import Beans.Tour;
import Daos.BandaDao;
import Daos.TourDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BandasServlet",urlPatterns = {"/listaBandas"})
public class BandasServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BandaDao bandaDao = new BandaDao();
        ArrayList<Banda> listaBanda = bandaDao.listaBanda();

        request.setAttribute("listaBandas",listaBanda);

        RequestDispatcher view =request.getRequestDispatcher("/listaBandas.jsp");
        view.forward(request,response);
    }
}
