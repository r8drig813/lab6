<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Cancion> lista = (ArrayList<Cancion>) request.getAttribute("listaCanciones");
%>

<html>
<jsp:include page="/static/head.jsp">
    <jsp:param name="title" value="Lista Canciones"/>
</jsp:include>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <jsp:include page="/includes/navbar.jsp">
        <jsp:param name="page" value="canciones"/>
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
                <td> <a  class="btn btn-success" href="<%=request.getContextPath()%>/CancionesServlet?a=cancionesBandas&id=<%=j.getIdbanda()%>"><%=j.getIdbanda()%></a>
                </td>
                <td>  <button class="green" onclick="changeColor(this)">Favorito</button>
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
            button.classList.add("btn-danger");
        } else {
            button.classList.remove("btn-danger");
            button.classList.add("btn-success");
        }
    }
</script>
</body>
</html>

