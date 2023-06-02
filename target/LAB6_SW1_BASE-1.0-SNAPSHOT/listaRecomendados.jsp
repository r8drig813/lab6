<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Cancion> lista = (ArrayList<Cancion>) request.getAttribute("lista");
%>
<html>
<jsp:include page="/static/head.jsp">
    <jsp:param name="title" value="Lista Recomendados"/>
</jsp:include>
<body>
    <div class="container">
        <jsp:include page="/includes/navbar.jsp">
                <jsp:param name="page" value="recomendados"/>
        </jsp:include>
        <div class="pb-5 pt-4 px-3 titlecolor">
            <div class="col-lg-6">
                <h1 class='text-light'>Lista de Recomendados</h1>
            </div>
        </div>
        <div class="tabla">
            <table class="table table-dark table-transparent table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>CANCION</th>
                    <th>BANDA</th>
                </tr>
                </thead>
                <tbody>
                <% for (Cancion j : lista) { %>
                <tr>
                    <td><%=j.getIdCancion()%>
                    </td>
                    <td><%=j.getNombre_cancion() %>
                    </td>
                    <td><%=j.getIdbanda()%>
                    </td>
                    <td><a  class="btn btn-success" href="<%=request.getContextPath()%>/JobServlet?a=editar&id=<%=j.getIdCancion()%>">Mas de banda</a>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
    <jsp:include page="/static/scripts.jsp"/>
</body>
</html>
