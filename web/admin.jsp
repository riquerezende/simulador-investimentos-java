
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page session="true" %>

<!DOCTYPE html>
<html>
    <head>

        <!--código para verificar se existe alguem logado-->
        <%
            /*evitar erro 500 e impedir que o usuário tente entrar direto na página admin por meio do link*/
            if (session.getAttribute("level") != null) {

                /*verificar se a pessoa logada é um admin*/
                if (session.getAttribute("level") == ("3")) {
                    /*permenece na página*/
                } else {
                    response.sendRedirect("index.jsp");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        %>

        <title>Página do Administrador</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="icon" href="img/favicon.png" />
    </head>
    <body>
        <nav id="menu">
            <center>
                <ul>
                    <li>
                        <a id="logoMenu" href="admin.jsp">    
                            <span>
                                Fácilnvest                                
                            </span>                    
                        </a>
                    </li>
                    <li>
                        <a href="logout.jsp" class="btnHeaderMenu" id="lastBtnHeaderMenu">
                            <span class="spanMenu">Sair</span>                          
                        </a>
                    </li>
                    <li>
                        <a href="admin.jsp" class="btnHeaderMenu" id="firstBtnHeaderMenu">
                            <span class="spanMenu">Home</span>
                        </a>
                    </li>
                    <li>
                        <span id="spanShowLogin">
                            Olá, <%
                                if (session.getAttribute("login") != null) {
                                    out.write(session.getAttribute("login").toString());
                                }
                            %>!
                        </span>
                    </li>
                </ul>
            </center>
        </nav>

        <div id="below">
            <div id="boxMenu">
                <center>
                    <br>
                    <br>
                    <br>
                    <a class="btnMenu" href="cadastro_de_usuario.jsp">
                        <span >Cadastrar Usuários</span>
                    </a>
                    <br>
                    <br>
                    <br>
                    <a class="btnMenu" href="cadastro_de_investimento.jsp">
                        <span >Cadastrar Investimentos</span>
                    </a>
                    <br>
                    <br>
                    <br>
                    <a class="btnMenu" href="alteracao_de_taxas.jsp">
                        <span >Alterar Taxas</span>
                    </a>
                </center>
            </div>
        </div>      
    </body>
</html>