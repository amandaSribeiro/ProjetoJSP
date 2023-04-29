

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file = "estilos.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file = "menu.jsp" %>
        <br>
        <%@include file="testarSessao.jsp" %>
        <h1>Olá! Login efetuado com Sucesso!</h1>
        Bem-vindo <%=usu%><br>
        Seu nível de acesso é <%=nivel%>
        
        
        
        
        <br><a href="sair.jsp">Sair</a>
    </body>
</html>
