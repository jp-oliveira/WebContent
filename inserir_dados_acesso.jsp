<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.*" %>
<%@ page import="Modelo.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserindo novo item_cardapio</title>
</head>
<body>
<%
String varNome = request.getParameter("NOME");
String varDisponibilidade = request.getParameter("Disponibilidade");

if ( (varNome.equals("")) || varDisponibilidade.equals(""))
{	
	out.println("<SCRIPT language='JavaScript'>");
	out.println("alert('TODOS OS CAMPOS DEVEM SER PREENCHIDOS!');");
	out.println("history.go(-1);");
	out.println("</SCRIPT>");	
}
else
{
Item_cardapio a = new Item_cardapio();

a.setNome(varNome);
a.setDisponibilidade(varDisponibilidade);

item_cardapio_dao adao = new item_cardapio_dao();
adao.inserir(a);

// Retorno
out.println("<SCRIPT language='JavaScript'>");
//if (res > 0) {
  out.println("alert('REGISTRO CADASTRADO COM ÊXITO');");
//} else {
//  out.println("alert('FALHA NA ALTERAÇÃO');");
//}
//out.println("history.go(-2);");
out.println("document.location.href='menu.jsp';");
out.println("</SCRIPT>");
}
%>
</body>
</html>