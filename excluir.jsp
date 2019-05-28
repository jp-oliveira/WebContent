<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.*" %>
<%@ page import="Modelo.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excluir Acesso</title>
</head>
<body>
<p>Excluindo Acesso</p>
<%

int cod = Integer.parseInt(request.getParameter("codigo"));
item_cardapio_dao adao = new item_cardapio_dao();
adao.conexaoBD();
adao.excluir(cod);

// Retorno
out.println("<SCRIPT language='JavaScript'>");
//if (res > 0) {
  out.println("alert('ACESSO EXCLUÍDO COM ÊXITO');");
//} else {
//  out.println("alert('FALHA NA ALTERAÇÃO');");
//}
//out.println("history.go(-2);");
out.println("document.location.href='menu.jsp';");
out.println("</SCRIPT>");

%>
</body>
</html>