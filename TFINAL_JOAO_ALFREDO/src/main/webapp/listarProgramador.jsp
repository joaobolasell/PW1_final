<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*"%>
<%@page import="classes.*"%>
<%@page errorPage="paginaErro.jsp" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>Listar Programadores</title>
</head>

<body >
  <jsp:useBean id="programadorBean" class="classes.Programador" scope="request"/>
    <%  
        List<Programador> lista=programadorBean.buscarTodos();  
        request.setAttribute("listaReq",lista);  
    %>
  <nav class="navbar navbar-expand-md navbar-light">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar3">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="adicionarProgramador.jsp">Cadastrar Programador</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link navbar-brand mr-0 text-primary" href="menu.html"><i class="fa d-inline fa-lg fa-stop-circle-o"></i>
              <b> MENU</b></a> </li>
          <li class="nav-item mx-2"> <a class="nav-link active" href="listarProgramador.jsp">Listar Programadores</a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-0 pt-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1>Listar Programadores</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="table-responsive">

            <table class="table table-bordered ">
              
              <thead class="thead-dark">
                <tr>
                  <th>Nome</th>
                  <th style="">Endereço</th>
                  <th>Email</th>
                  <th>Salario</th>
                  <th>CPF</th>
                  <th class="">Linguagem de Programação</th>
                  <th>Projetos</th>
                  <th>Opções</th>
                </tr>
              </thead>



              <tbody>
                <c:forEach var="programador" items="${listaReq}">
                <tr>
                  <td>${programador.getNome()}</td>
                  <td>${programador.getEndereco()}</td>
                  <td>${programador.getEmail()}</td>
                  <td>${programador.getSalario()}</td>
                  <td>${programador.getCpf()}</td>
                  <td>${programador.getLinguagemProg()}</td>
                  <td>${programador.getProjetos()}</td>
                  <td><a class="btn btn-danger mr-1" href="excluirProg.jsp?idFuncionario=${programador.getIdFuncionario()}"> Excluir </a>
                      <a class="btn btn-secondary" href="editarProg.jsp?idFuncionario=${programador.getIdFuncionario()}"> Editar </a>
                  
                  
                  
                  
                </tr>
              </c:forEach>
              </tbody>


            </table>


          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>

</html>