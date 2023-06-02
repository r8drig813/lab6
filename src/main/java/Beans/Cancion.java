package Beans;

public class Cancion {

    private int idCancion;
    private String nombre_cancion;
    private String idbanda;
    private Boolean favorito;

    public int getIdCancion() {
        return idCancion;
    }

    public void setIdCancion(int idCancion) {
        this.idCancion = idCancion;
    }

    public String getNombre_cancion() {
        return nombre_cancion;
    }

    public void setNombre_cancion(String nombre_cancion) {
        this.nombre_cancion = nombre_cancion;
    }

    public String getIdbanda() {
        return idbanda;
    }

    public void setIdbanda(String idbanda) {
        this.idbanda = idbanda;
    }

    public Boolean getFavorito() {
        return favorito;
    }

    public void setFavorito(Boolean favorito) {
        this.favorito = favorito;
    }
}
