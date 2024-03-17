<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Formulário</h1>
    
    <% if (request.getMethod().equals("POST")) {
            String nome = request.getParameter("nome");
            String profissao = request.getParameter("profissao");
            if (nome != null && !nome.isEmpty()) { %>
                <h2>Olá, <%= nome %>! Sejá bem vindo a pagina</h2>
                <h2>Que legal, sua profissão é  <%= profissao %>!</h2>
            <% } else { %>
                <p style="color: red;">Por favor, insira seu nome.</p>
            <% }
        } %>
    
    <form method="post" action="<%= request.getContextPath() + request.getServletPath() %>">
        <label for="nome">Digite seu nome:</label>
        <input type="text" id="nome" name="nome" required> <br>
        <label for="profissao">Digite sua profissão:</label>
        <input type="text" id="profissao" name="profissao" required>
        <button type="submit">Enviar</button>
    </form>
</body>
</html>