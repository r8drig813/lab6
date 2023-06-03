<%@ page import="java.util.Calendar" %>
<%@ page import="Beans.Cancion" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Beans.Banda" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<jsp:include page="/static/head.jsp">
  <jsp:param name="title" value="Añadir"/>
</jsp:include>
<head>
</head>
<body>
<div class="container">
  <jsp:include page="/includes/navbar.jsp">
    <jsp:param name="page" value="añadir"/>
  </jsp:include>
  <div class="pb-5 pt-4 px-3 titlecolor">
    <div class="col-lg-6">
      <h1 class='text-light'>¿ A que lista desea Agregar?</h1>
    </div>
  </div>
  <div class="tabla">
    <table class="table table-dark table-transparent table-hover">
      <thead>

      </thead>
      <tbody>

      <tr>
        <td> <a   class="btn btn-success" href="/">Añadir a Favoritos</a>
        </td>
        <td> <a   class="btn btn-success" href="/">Añadir a Biblioteca</a>
        </td>
        <td> <a   class="btn btn-success" href="/">Añadir a </a>
        </td>

      </tr>

      </tbody>
    </table>
  </div>
</div>
<jsp:include page="/static/scripts.jsp"/>

</body>
</html>
