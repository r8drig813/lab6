package Daos;

import Beans.Cancion;

import java.sql.*;
import java.util.ArrayList;

public class CancionDao {

    public ArrayList<Cancion> listarRecomendados(){
        ArrayList<Cancion> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select c.idcancion, c.nombre_cancion from cancion c\n" +
                "inner join reproduccion r on (c.idcancion =  r.cancion_idcancion)\n" +
                "where r.cancion_idcancion > 2\n" +
                "group by idcancion\n" +
                "order by count(*) desc";
        String url = "jdbc:mysql://localhost:3306/lab6sw1?serverTimezone=America/Lima";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while(resultSet.next()){
                Cancion cancion = new Cancion();
                cancion.setIdCancion(resultSet.getInt(1));
                cancion.setNombre_cancion(resultSet.getString(2));
                cancion.setIdbanda(resultSet.getString(3));

                lista.add(cancion);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }
}

