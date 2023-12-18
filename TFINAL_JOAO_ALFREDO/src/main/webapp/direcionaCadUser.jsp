<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="classes.*"%>
<%@page errorPage="paginaErro.jsp"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Confirmação de Cadastro de UsuarioLogin</title>
    </head>
    <body>    
        <jsp:useBean id="usuarioBean" class="classes.Usuario" scope="request"/>
        <jsp:setProperty name="usuarioBean" property="*" /> 
        <%
            if (usuarioBean.salvar()) {
        %>
         <jsp:forward page="index.html"/>
        <%
        } else {%>
          <jsp:forward page="mostrarErroLogin.jsp"/>
        <%}%>
    </body>
</html>
