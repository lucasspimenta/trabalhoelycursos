<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Excluído</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

    <jsp:useBean id="c" class="org.trabalhos.Cursos" scope="page" />
    <jsp:useBean id="cdao" class="org.trabalhos.CursosDao" scope="page" />	
    <jsp:setProperty property="*" name="c"/>
    <%
        cdao.excluir(c);
    %>

    <div class="container mt-5">
        <div class="alert alert-danger text-center" role="alert">
            <h2 class="my-3">Registro excluído com sucesso!</h2>
        </div>
        <div class="text-center">
            <a href="index.jsp" class="btn btn-primary mb-3">Ir para o Início</a>
        </div>
    </div>

</body>
</html>
