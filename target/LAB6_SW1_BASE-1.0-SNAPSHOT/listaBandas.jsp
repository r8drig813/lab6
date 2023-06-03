<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Beans.Banda" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ArrayList<Banda> lista = (ArrayList<Banda>) request.getAttribute("listaBandas");
%>

<html>
<jsp:include page="/static/head.jsp">
  <jsp:param name="title" value="Lista Bandas"/>
</jsp:include>
<head>
</head>
<body>
<div class="container">
  <jsp:include page="/includes/navbar.jsp">
    <jsp:param name="page" value="bandas"/>
  </jsp:include>
  <div class="pb-5 pt-4 px-3 titlecolor">
    <div class="col-lg-6">
      <h1 class='text-light'>Lista de Bandas </h1>
    </div>
  </div>
  <div class="tabla">
    <table class="table table-dark table-transparent table-hover">
      <thead>
      <tr>
        <th>ID</th>
        <th>BANDA</th>
      </tr>
      </thead>
      <tbody>
      <% for (Banda j : lista) { %>
      <tr>
        <td><%=j.getIdBanda()%>
        </td>
        <td> <a   class="btn btn-success" href="<%=request.getContextPath()%>/CancionesServlet?a=cancionesBandas&id=<%=j.getIdBanda()%>"><%=j.getIdBanda()%></a>
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

