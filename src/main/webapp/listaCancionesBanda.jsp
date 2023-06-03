<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ArrayList<Cancion> lista = (ArrayList<Cancion>) request.getAttribute("listaCancionesBanda");
%>

<html>
<jsp:include page="/static/head.jsp">
  <jsp:param name="title" value="Lista Canciones Banda"/>
</jsp:include>
<body>
<div class="container">
  <jsp:include page="/includes/navbar.jsp">
    <jsp:param name="page" value="canciones"/>
  </jsp:include>
  <div class="pb-5 pt-4 px-3 titlecolor">
    <div class="row mt-2 mb-3">
      <h1 class="col-10 text-light"  >Lista de Canciones por Banda</h1>
        <div class="col-2">
          <a class="btn btn-warning" href="<%=request.getContextPath()%>/listaCanciones">Mostrar todas las canciones</a>        </div>
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
        <td><%=j.getNombre_cancion()%>
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

