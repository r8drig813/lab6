package Daos;

import Beans.Banda;
import Beans.Cancion;

import java.sql.*;
import java.util.ArrayList;

public class BandaDao {
    private static String user = "root";
    private static String pass = "root";
    private static String url = "jdbc:mysql...";

    //En este caso se usa preparedStatement
    public ArrayList<Banda> listaBanda(){
        ArrayList<Banda> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from banda\n" +
                "order by nombre_banda;";
        String url = "jdbc:mysql://localhost:3306/lab6sw1?serverTimezone=America/Lima";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while(resultSet.next()){
                Banda banda = new Banda();
                banda.setIdBanda(resultSet.getString(1));
                banda.setNombre_banda(resultSet.getString(2));


                lista.add(banda);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }


}
