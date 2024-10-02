<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Cursos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

    <%
        int Idcursos = Integer.parseInt(request.getParameter("id"));
        Cursos c = new Cursos();
        CursosDao cdao = new CursosDao();
        if (Idcursos > 0) {
            c = cdao.consultar(Idcursos);
        } else {
            // Limpa os dados para novo
            c.setNomecurso("");
            c.setDuracao("");
            c.setInstituicao("");
            c.setModalidade("");
        }
    %>

    <div class="container mt-5">
        <div class="text-center mb-4">
            <h2 class="display-6">Formulário de Cadastro de Cursos</h2>
            <p class="lead">Preencha os dados do curso abaixo</p>
        </div>

        <form action="gravar.jsp" method="post" class="shadow p-4 rounded bg-light">
            <input type="hidden" name="idcursos" value="<%= c.getIdcursos() %>" />
           
            <div class="mb-3">
                <label for="nomecurso" class="form-label">Nome do Curso</label>
                <input type="text" name="nomecurso" class="form-control" placeholder="Digite o nome do curso" value="<%= c.getNomecurso() %>" required>
            </div>

            <div class="mb-3">
                <label for="duracao" class="form-label">Duração</label>
                <input type="text" name="duracao" class="form-control" placeholder="Digite a duração" value="<%= c.getDuracao() %>" required>
            </div>
            
            <div class="mb-3">
                <label for="instituicao" class="form-label">Instituição</label>
                <input type="text" name="instituicao" class="form-control" placeholder="Digite a instituição" value="<%= c.getInstituicao() %>" required>
            </div>

            <div class="mb-3">
                <label for="modalidade" class="form-label">Modalidade</label>
                <input type="text" name="modalidade" class="form-control" placeholder="Digite a modalidade" value="<%= c.getModalidade() %>" required>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-success btn-lg">
                    <i class="bi bi-check-circle"></i> Salvar
                </button>
            </div>
        </form>
    </div>
</body>
</html>
