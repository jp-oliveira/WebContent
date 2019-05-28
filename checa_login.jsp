<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="DAO.*" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verificando login e senha</title>
</head>
<body>
	<%
		String varLogin = request.getParameter("login");
	    String varSenha = request.getParameter("senha");		
		UsuarioDAO udao = new UsuarioDAO();
		
		udao.conexaoBD();
		
		boolean achouUsuario = udao.validaLogin(varLogin, varSenha);
				
		if (achouUsuario) 
		
			{
				session.putValue("loginUsuario", varLogin);				
				response.sendRedirect("menu.jsp");				
			}
		
		else
		 response.sendRedirect("falha_login.jsp");
	%> 
</body>
</html>