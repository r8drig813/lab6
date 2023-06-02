<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: rodri
  Date: 1/06/2023
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Cancion> lista = (ArrayList<Cancion>) request.getAttribute("lista");
%>
<html>

<head>
    <title></title>
</head>
<body>
    <div class="container">

    </div>
    <h1>LISTA DE CANCIONES RECOMENDADAS</h1>
    <table class="table table-stripped">
        <thead>
        <tr>
            <th>ID</th>
            <th>CANCION</th>
            <th>BANDA</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <% for (Cancion j : lista) { %>
        <tr>
            <td><%=j.getIdbanda()%>
            </td>
            <td><%=j.getNombre_cancion() %>
            </td>
            <td><%=j.getIdbanda()%>
            </td>
            <td><a href="<%=request.getContextPath()%>/JobServlet?a=editar&id=<%=j.getIdCancion()%>">Mas de la banda</a>
            </td>

        </tr>
        <% } %>
        </tbody>
    </table>


</body>
</html>
