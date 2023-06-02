<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ArrayList<Cancion> lista = (ArrayList<Cancion>) request.getAttribute("listaCancionesBanda");
%>

<html>
<jsp:include page="/static/head.jsp">
  <jsp:param name="title" value="Lista Canciones"/>
</jsp:include>
<body>
<div class="container">
  <jsp:include page="/includes/navbar.jsp">
    <jsp:param name="page" value="canciones"/>
  </jsp:include>
  <div class="pb-5 pt-4 px-3 titlecolor">
    <div class="col-lg-6">
      <h1 class='text-light'>Lista de Canciones</h1>
      <a class="btn btn-warning" href="">Mostrar todas las canciones</a>
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
      <% for (Cancion : listaCancionesBanda) { %>
      <tr>
        <td><%=Cancion.getIdCancion()%>
        </td>
        <td><%=j.getNombre_cancion() %>
        </td>
        <td><%=j.getIdbanda()%>
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

