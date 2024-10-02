<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário do Curso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

    <jsp:useBean id="cdao" class="org.trabalhos.CursosDao" scope="page"/>
    <jsp:useBean id="c" class="org.trabalhos.Cursos" scope="page"/>
	<jsp:setProperty name = "c" property = "*"/>
	${c=cdao.consultar(c.idcursos) }    


    <div class="container mt-5">
        <h1 class="text-center mb-4">Formulário do Curso</h1>
        <form action="gravar.jsp" method="post">
            <input type="hidden" name="idcursos" value="${c.idcursos}" />

            <div class="mb-3">
                <label for="nomecurso" class="form-label">Nome do Curso</label>
                <input type="text" name="nomecurso" class="form-control" value="${c.nomecurso}" required />
            </div>

            <div class="mb-3">
                <label for="duracao" class="form-label">Duração</label>
                <input type="text" name="duracao" class="form-control" value="${c.duracao != null ? c.duracao : ''}" required />
            </div>

            <div class="mb-3">
                <label for="instituicao" class="form-label">Instituição</label>
                <input type="text" name="instituicao" class="form-control" value="${c.instituicao != null ? c.instituicao : ''}" required />
            </div>

            <div class="mb-3">
                <label for="modalidade" class="form-label">Modalidade</label>
                <input type="text" name="modalidade" class="form-control" value="${c.modalidade != null ? c.modalidade : ''}" required />
            </div>

            <button type="submit" class="btn btn-success">Salvar</button>
            <a href="listar.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>

</body>
</html>
