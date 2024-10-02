<%@page import="org.trabalhos.Cursos" %>
<%@page import="org.trabalhos.CursosDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Salvar Curso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container mt-5">
        <%
            CursosDao dao = new CursosDao();
            Cursos c = new Cursos();
            
            String idCursosParam = request.getParameter("idcursos");
            if (idCursosParam != null && !idCursosParam.isEmpty()) {
                try {
                    c.setIdcursos(Integer.parseInt(idCursosParam));
                } catch (NumberFormatException e) {
                    out.println("<div class='alert alert-danger'>Erro: O valor de 'idcursos' não é válido.</div>");
                }
            } else {
                c.setIdcursos(0); 
            }

            c.setNomecurso(request.getParameter("nomecurso"));
            c.setDuracao(request.getParameter("duracao"));
            c.setInstituicao(request.getParameter("instituicao"));
            c.setModalidade(request.getParameter("modalidade"));

            if (c.getIdcursos() > 0) {
                dao.editar(c);
            } else {
                dao.adicionar(c);
            }
        %>

        <div class="alert alert-success text-center" role="alert">
            <h1 class="display-6">Curso salvo com sucesso!</h1>
            <p>O curso foi salvo no banco de dados.</p>
        </div>

        <div class="text-center mt-4">
            <a href="listar.jsp" class="btn btn-success btn-lg">
                <i class="bi bi-check-circle"></i> OK
            </a>
        </div>
    </div>

</body>
</html>
