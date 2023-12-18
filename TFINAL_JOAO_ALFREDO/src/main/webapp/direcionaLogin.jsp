<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="classes.Usuario"%>
<%@page errorPage="paginaErro.jsp"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Confirmação de Login</title>
    </head>
    <body>    
        <jsp:useBean id="usuarioBean" class="classes.Usuario" scope="request"/>
        <jsp:setProperty name="usuarioBean" property="*" /> 
        <%
            if (usuarioBean.login() == true) {
        %>
         <jsp:forward page="menu.html"/>
        <%
        } else {%>
          <jsp:forward page="mostrarErroLogin.jsp"/>
        <%}%>
    </body>
</html>
