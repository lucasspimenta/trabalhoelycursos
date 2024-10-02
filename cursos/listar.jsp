<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Cursos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container mt-5">
        <div class="text-center mb-4">
            <h2 class="display-6">Lista de Cursos</h2>
            <p class="lead">Visualize, edite ou exclua cursos cadastrados</p>
        </div>

        <div class="d-flex justify-content-between mb-3">
            <a href="formulario.jsp?id=0" class="btn btn-success">
                <i class="bi bi-plus-circle"></i> Adicionar Curso
            </a>
            <a href="index.jsp" class="btn btn-primary">
                <i class="bi bi-house-door"></i> Voltar ao Início
            </a>
        </div>

        <table class="table table-striped table-hover shadow-sm">
            <thead class="table-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome do Curso</th>
                    <th scope="col">Duração</th>
                    <th scope="col">Instituição</th>
                    <th scope="col">Modalidade</th>
                    <th scope="col" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                    CursosDao dao = new CursosDao();
                    for (Cursos c : dao.listar()) {
                        out.print("<tr>");
                        out.print("<td>" + c.getIdcursos() + "</td>");
                        out.print("<td>" + c.getNomecurso() + "</td>");
                        out.print("<td>" + c.getDuracao() + "</td>");
                        out.print("<td>" + c.getInstituicao() + "</td>");
                        out.print("<td>" + c.getModalidade() + "</td>");
                        out.print("<td class='text-center'>");
                        out.print("<a href='formulario.jsp?id=" + c.getIdcursos() + "' class='btn btn-warning btn-sm me-2'>Editar</a>");
                        out.print("<a href='excluir.jsp?id=" + c.getIdcursos() + "' class='btn btn-danger btn-sm'>Excluir</a>");
                        out.print("</td>");
                        out.print("</tr>");
                    }
                %>
            </tbody>
        </table>
    </div>

</body>
</html>
