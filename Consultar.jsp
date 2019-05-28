<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.*" %>
<%@ page import="Modelo.*" %>

<html>
  <head>
    <title>Pizzaria JP - Consultar Cardápio</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>

<body>

<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <ul class="nav">
      					<li><a href="index.jsp">Início</a></li>
      					<li><a href="descricao.jsp">Descrição</a></li>      					
      					<li><a href="logout.jsp">Sair</a></li>      
    </ul>
  </div>
</div>

<table class="table table-sm">
  <thead>
    <tr>
      <th>NOME</th>
      <td>DISPONIBILIDADE</td>
      <td>CÓDIGO</td>                  
      <th>OPÇÕES</th>
    </tr>
  </thead>
  <tbody>

<%

	item_cardapio_dao adao = new item_cardapio_dao();
	adao.conexaoBD();

	Item_cardapio[] a = adao.consultaTodos();
	for (int i = 0; i < a.length; i++)
	  	{
	  		out.println ("<tr><th scope='row'>" +  
	  	                 a[i].getNome() + "</th><td>"+ 
	  				     a[i].getDisponibilidade() + "</td><td>" +
	  		             a[i].getCodigo() + "</td><td>" + 
	  				    "<a href='atualizar.jsp?codigo="+a[i].getCodigo()+ 
	  				    "'>Atualizar</a>/" + 
	  		"<a href='excluir.jsp?codigo="+a[i].getCodigo()+"'>Excluir</a></td></tr>");
	  	}
%>

  </tbody>
</table>
</body></html>