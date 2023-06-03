package Servlets;

import Beans.Cancion;
import Daos.CancionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CancionesFavServlet",urlPatterns = {"/CancionesFavoritos","/listaFavoritos"})
public class CancionesFavoritos extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("p") == null ? "crear" : request.getParameter("p");

        CancionDao cancionDao = new CancionDao();

        switch (action) {
            case "a":
                Cancion cancion = parseCancion(request);
                cancionDao.actualizar(cancion);
                response.sendRedirect(request.getContextPath() + "/listaFavoritos");
                break;
            case "b":
                Cancion cancion2 = parseCancion(request);
                cancionDao.eliminar(cancion2);
                response.sendRedirect(request.getContextPath() + "/listaFavoritos");
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CancionDao cancionDao = new CancionDao();

        String action = request.getParameter("a") == null ? "favoritos" : request.getParameter("a");

        switch (action) {
            case "favoritos":
                request.setAttribute("listaCanciones", cancionDao.listaFavoritos());
                request.getRequestDispatcher("/listaFavoritos.jsp").forward(request, response);
            break;
            case "canciones":
                request.setAttribute("listaCanciones", cancionDao.listaCanciones());
                request.getRequestDispatcher("/listaCanciones.jsp").forward(request, response);
                break;
        }
    }

    public Cancion parseCancion(HttpServletRequest request) {

        Cancion cancion = new Cancion();
        String idCancion = request.getParameter("idCancion") != null ? request.getParameter("idCancion") : "";
        String favorito = request.getParameter("favorito");
        try {

            int id = Integer.parseInt(idCancion);
            int fav = Integer.parseInt(favorito);

            cancion.setIdCancion(id);
            cancion.setFavorito(fav);

            return cancion;

        } catch (NumberFormatException e) {

        }
        return cancion;
    }
}