<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.*" %>
<%@ page import="Modelo.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  
	<head>
    
    	<meta charset="ISO-8859-1">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!-- As meta tags acima precisam vir primeiro no head para o funcionamento do Bootstrap -->
    	
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">   
    	<!-- Ativa o design responsivo do Bootstrap -->
    
    	<title>AcessoSites - Falha na Autentica��o</title>

   		<!-- Bootstrap -->
    	<link href="css/bootstrap.min.css" rel="stylesheet">
    	<link href="css/bootstrap-responsive.css" rel="stylesheet">
    
    	<!-- Defini��o de estilo da p�gina -->
    	<style type="text/css">
      		body {
         		background-color: #f5f5f5;
      		}

      		.form-signin {
        		max-width: 300px;
        		padding: 19px 29px 29px;
        		margin: 0 auto 20px;
        		background-color: #fff;
        		border: 1px solid #e5e5e5;
        		-webkit-border-radius: 5px;
           		-moz-border-radius: 5px;
                	border-radius: 5px;
        		-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           			-moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                		box-shadow: 0 1px 2px rgba(0,0,0,.05);
      		}
      		
      		.form-signin .form-signin-heading, .form-signin .checkbox {
        		margin-bottom: 10px;
      		}
      		
      		.form-signin input[type="text"], .form-signin input[type="password"] {
        		font-size: 16px;
        		height: auto;
        		margin-bottom: 15px;
        		padding: 7px 9px;
      		}

		</style>

	</head>
  
  	<body>
  	
  		<!-- In�cio do encapsulamento da p�gina -->
  		<div id="wrap">

			<!-- Barra de navega��o superior fixada no topo da p�gina -->
			<div class="navbar navbar-fixed-top navbar-inverse">
  				<div class="navbar-inner">    
    				<ul class="nav">
      					<li><a href="index.jsp">In�cio</a></li>
      					<li><a href="descricao.jsp">Descri��o</a></li>
    				</ul>
  				</div>
			</div>
	
			<!-- Unidade her�i destacando o t�tulo do projeto -->
      		<div class="hero-unit">
        		<h1>AcessoSites</h1>
        		<p>Agenda com dados para acesso a Sites</p>
        		<!-- 
        			Bot�o "Saiba Mais" desativado
        			<p><a class="btn btn-primary btn-large">Saiba Mais &raquo;</a></p> 
        		-->
      		</div>	
			
			<!-- Alerta de erro no login -->
			<div class="alert alert-error">
  				<button type="button" class="close" data-dismiss="alert">�</button>
  				<a href="#" class="close" data-dismiss="alert">�</a>
  				<h4>Falha na Autentica��o!</h4>
  				Nome de usu�rio inexistente ou senha incorreta. Por favor, fa�a o login novamente.
			</div>
			
			<!-- Formul�rio de Login -->
			<div class="container">
      			<form class="form-signin" method="POST" action="checa_login.jsp">
        			<h2 class="form-signin-heading">Login</h2>
        			<input type="text" class="input-block-level" placeholder="Digite seu login" name="login">
        			<input type="password" class="input-block-level" placeholder="Digite sua Senha" name="senha">        
        			<!-- 
        				Checkbox "Lembre-se de mim" desativada 
        				<label class="checkbox">
          					<input type="checkbox" value="remember-me"> Remember me
        				</label> 
        			-->        
       				<button class="btn btn-large btn-primary" type="submit">Entrar</button>
      			</form>
      			<p><a href = "recupera_senha_login.jsp">Esqueci o Login e/ou a Senha</a></p> 
    		</div>
	
			<!-- 
				Barra de navega��o inferior desativada, substitu�da pelo rodap� fixo 
				<div class="navbar navbar-fixed-bottom navbar-inverse">
  					<div class="navbar-inner">    
    					<ul class="nav">
      						<li><a href="#">Aluno: Thiago Pimentel Luiz Vianna</a></li>
      						<li><a href="#">Orientador: Prof. Dr. Orlando Bernardo Filho</a></li>
      						<li><a href="#">Julho - 2015</a></li>
    					</ul>
  					</div>
				</div>
			-->
	
			<div id="push"></div>
    	</div>
    	<!-- Fim do encapsulamento da p�gina -->

    	<!-- Rodap� fixo -->
    	<div id="footer">
    		<div class="container">
        		<p class="muted credit">Exemplo de projeto web feito na aula de PAC
        								(Vers�o 1.0)</p>
      		</div>
    	</div>

    	<!-- jQuery (necessario para o carregamento dos plugins JavaScript do Bootstrap) -->
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
    	<!-- Incluus�o dos plugins compilados do Boostrap, conforme a necessidade -->
    	<script src="js/bootstrap.min.js"></script>
    
  	</body>
  
</html>