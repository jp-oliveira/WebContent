<%@ page import="java.sql.*" %>
<%@ page import="DAO.*" %>
<%@ page import="Modelo.*" %>
<html>
  <head>
    <title>AcessoSites - Inserir Acesso</title>
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
			<div class="container">
      			<form class="form-signin" method="POST" action="inserir_dados_acesso.jsp">
        			<h2 class="form-signin-heading">Cadastro de Novo Item</h2>
        			Nome <input type="text" class="input-block-level" name="NOME">
        			Disponibilidade <input type="text" class="input-block-level" name="Disponibilidade">                    			
       				
       				<button class="btn btn-large btn-primary" type="submit">Salvar</button>
      			</form>      			
    		</div>
</body>
</html>