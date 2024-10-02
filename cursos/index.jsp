<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Cursos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="text-center mb-4">
            <h1 class="display-4">Cadastro de Cursos</h1>
            <p class="lead">Gerencie seus cursos de forma prática e rápida</p>
        </div>

        <div class="d-flex justify-content-center gap-3">
            <a href="formulario.jsp?id=0" class="btn btn-success btn-lg">
                <i class="bi bi-plus-circle"></i> Adicionar Cursos
            </a>
            <a href="listar.jsp" class="btn btn-primary btn-lg">
                <i class="bi bi-list"></i> Listar Cursos
            </a>
        </div>

        <div class="mt-5">
            <p class="text-muted text-center">Organize e visualize facilmente os cursos disponíveis.</p>
        </div>
    </div>
</body>
</html>
