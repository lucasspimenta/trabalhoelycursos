<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Cursos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:useBean id="cdao" scope="page" class="org.trabalhos.CursosDao" />

    <div class="container mt-5">
        <h2 class="my-3 text-center">Lista de Cursos</h2>
        <div class="text-center">
            <a href="formulario.jsp?idcursos=0" class="btn btn-success mb-3">Adicionar Curso</a>
            <a href="index.jsp" class="btn btn-primary mb-3">Início</a>
        </div>
        <table class="table table-striped table-bordered">
            <thead>
                <tr class="table-primary text-center">
                    <th>NOME DO CURSO</th>
                    <th>DURAÇÃO</th>
                    <th>INSTITUIÇÃO</th>
                    <th>MODALIDADE</th>
                    <th>AÇÕES</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${cdao.listar()}">
                    <tr class="text-center">
                        <td>${c.nomecurso}</td>
                        <td>${c.duracao}</td>
                        <td>${c.instituicao}</td>
                        <td>${c.modalidade}</td>
                        <td>
                            <a href="formulario.jsp?idcursos=${c.idcursos}" class="btn btn-warning btn-sm">Alterar</a>
                            <a href="excluir.jsp?idcursos=${c.idcursos}" class="btn btn-danger btn-sm">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
