<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Curso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container mt-5">
        <%
            Cursos c = new Cursos();
            c.setIdcursos(Integer.parseInt(request.getParameter("id")));

            CursosDao cdao = new CursosDao();
            cdao.excluir(c);
        %>

        <div class="alert alert-danger text-center" role="alert">
            <h1 class="display-6">Curso excluído com sucesso!</h1>
            <p>O curso foi removido do banco de dados.</p>
        </div>

        <div class="text-center mt-4">
            <a href="listar.jsp" class="btn btn-success btn-lg">
                <i class="bi bi-arrow-left-circle"></i> Voltar à Lista de Cursos
            </a>
        </div>
    </div>

</body>
</html>
