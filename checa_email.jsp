<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="DAO.*" %>
<%@ page import="Modelo.*" %>
<%@ page import="org.apache.commons.mail.*" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Address" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.PasswordAuthentication" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AcessoSites</title>
</head>
<body>
	<%
		String varEmail = request.getParameter("EMAIL");
		String login;
		String senha;
		String conteudoEmail = "O seu Login e Senha são: \n\n";
		UsuarioDAO udao = new UsuarioDAO();
		
		udao.conexaoBD();
		
		boolean achou = udao.validaEmail(varEmail);
		
		SimpleEmail mail = new SimpleEmail();
		mail.setFrom("aulas.orlando@gmail.com", "AcessoSites");
		mail.setSubject("Recuperação de Senha e/ou Login");
		mail.setSSL(true);
		mail.setTLS(true);		
		mail.setAuthentication("aulas.orlando@gmail.com", "clp#20171");
		mail.setHostName("smtp.gmail.com");
		mail.setSmtpPort(465);		
		
		if (achou) 
		
			{
				out.println("Enviando Email com Login e Senha.");
				Usuario u = udao.consultaPorEmail(varEmail);
				login = u.getLogin();
				senha = u.getSenha();
				conteudoEmail = conteudoEmail + "Login: " + login + "\nSenha: " + senha;
				mail.setMsg(conteudoEmail);
				mail.addTo(u.getEmail());
				mail.send();
				out.println("<SCRIPT language='JavaScript'>");
				out.println("alert('EMAIL ENVIADO COM SUCESSO');");
				out.println("history.go(-2);");
				out.println("</SCRIPT>");				
			}
		
		else 
		{
			out.println("<SCRIPT language='JavaScript'>");
			out.println("alert('EMAIL NÃO CADASTRADO');");
			out.println("history.go(-1);");
			out.println("</SCRIPT>");
		}
	%> 
</body>
</html>