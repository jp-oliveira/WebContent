<%@ page import="java.sql.*" %>
<%@ page import="DAO.*" %>
<%@ page import="Modelo.*" %>

<html>
  <head>
    <title>Item_cardapio Sites - Atualizar Item_cardapio</title>
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
<%

int codigo = Integer.parseInt(request.getParameter("codigo"));

item_cardapio_dao adao = new item_cardapio_dao();
adao.conexaoBD();
Item_cardapio a = adao.consultaPorCodigo(codigo);

%>
			<div class="container">
      			<form class="form-signin" method="POST" action="alterar_dados_acesso.jsp?codigo=<% out.println (codigo); %>">
        			<h2 class="form-signin-heading">Alterando Dados do Item_cardapio</h2>
        			Nome <input type="text" class="input-block-level" value="<% out.println (a.getNome()); %>" name="NOME">
        			Disponibilidade <input type="text" class="input-block-level" value="<% out.println (a.getDisponibilidade()); %>" name="DISPONIBILIDADE">                  			
       				<button class="btn btn-large btn-primary" type="submit">Salvar</button>
					<button class="btn btn-large btn-primary" type="reset">Dados Atuais</button>
      			</form>      			
    		</div>
</body>
</html>