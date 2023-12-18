<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="classes.*"%>
<%@page errorPage="paginaErro.jsp" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>Editar Programador</title>
</head>

<body>
  <div class="py-5 text-center" style="	background-color: white;		background-position: top left;	background-size: 100%;	background-repeat: repeat;">
    <div class="container">
      <div class="row" style="">
        <div class="mx-auto col-md-6 col-10 bg-white p-5" style="background-image: background-color: white;	background-position: top left;	background-size: 100%;	background-repeat: repeat; ">
          
      <jsp:useBean id="programadorBean" class="classes.Programador" scope="request"/>
      <jsp:setProperty name="programadorBean" property="idFuncionario" param="idFuncionario" />
        <%  
        Programador programador = programadorBean.buscarID(); 
        String id = String.valueOf(programadorBean.getIdFuncionario());	
        %>
          
          <h1 class="mb-4">Editar Programador<br></h1>
          
          <form method ="POST" action="direcionaEdit.jsp" style="">
            <div class="form-group mb-3"> <small class="form-text text-muted text-right"></small> </div>
            <input type="hidden" name="idFuncionario" value="<%=id%>"/>
            <div class="form-group"><label class="d-flex">Nome</label><input type="text" class="form-control" id="inlineFormInput" style="" name="nome" value="<%=programador.getNome()%>"></div>
            <div class="form-group" style=""><label class="d-flex">Endereço</label><input type="text" class="form-control" id="inlineFormInput" name="endereco" value="<%=programador.getEndereco()%>"></div>
            <div class="form-group" ><label class="d-flex">Email</label><input type="email" class="form-control" id="inlineFormInput" name="email" value="<%=programador.getEmail()%>"></div>
            <div class="form-group"><label class="d-flex">Salario</label><input type="number" class="form-control" id="inlineFormInput" name="salario" value="<%=programador.getSalario()%>"></div>
            <div class="form-group"><label class="d-flex">Cpf</label><input type="text" class="form-control" id="inlineFormInput" name="cpf" value="<%=programador.getCpf()%>"></div>
            <div class="form-group"><label class="d-flex">Linguagem de Programação</label><input type="text" class="form-control" id="inlineFormInput" name="linguagemProg" value="<%=programador.getLinguagemProg()%>"></div>
            <div class="form-group"><label class="d-flex">Projetos</label><input type="text" class="form-control" id="inlineFormInput" name="projetos" value="<%=programador.getProjetos()%>"></div>
            
            
            <a class="btn btn-danger m-0 mx-1 align-items-center" href="listarProgramador.jsp">Cancelar<br></a>
            <button type="submit" class="btn btn-success mx-1 align-items-center justify-content-center flex-grow-0"  value="OK">Salvar</button>
          </form>

        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>

</html>

