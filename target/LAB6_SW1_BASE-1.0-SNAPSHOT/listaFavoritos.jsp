<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Cancion> lista = (ArrayList<Cancion>) request.getAttribute("listaCanciones");
%>

<html>
<jsp:include page="/static/head.jsp">
    <jsp:param name="title" value="Lista Canciones Favoritos"/>
</jsp:include>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <jsp:include page="/includes/navbar.jsp">
        <jsp:param name="page" value="Favoritos"/>
    </jsp:include>
    <div class="pb-5 pt-4 px-3 titlecolor">
        <div class="col-lg-6">
            <h1 class='text-light'>Lista de Canciones </h1>
        </div>
    </div>
    <div class="tabla">
        <table class="table table-dark table-transparent table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>CANCION</th>
                <th>BANDA</th>
                <th>AÑADIR FAVORITO</th>
            </tr>
            </thead>
            <tbody>
            <% for (Cancion j : lista) { %>
            <tr>
                <td><%=j.getIdCancion()%>
                </td>
                <td><%=j.getNombre_cancion() %>
                </td>
                <td> <%=j.getIdbanda()%>
                </td>
                <td> <a  class="btn btn-success" onclick="changeColor(this)"  href="<%=request.getContextPath()%>/CancionesFavoritos?p=b&id=<%=j.getIdCancion()%>">Eliminar de Favoritos</a>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</div>
<jsp:include page="/static/scripts.jsp"/>
<script>
    function changeColor(button) {
        if (button.classList.contains("btn-success")) {
            button.classList.remove("btn-success");
            button.classList.add("btn-secondary");
        } else {
            button.classList.remove("btn-secondary");
            button.classList.add("btn-success");
        }
    }
</script>
</body>
</html>

