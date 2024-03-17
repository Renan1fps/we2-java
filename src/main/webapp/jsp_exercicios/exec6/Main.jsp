<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Parse de Nome</h1>
    
    <%!
        public String parseNameToUpperCase(String nome) {
            return nome.toUpperCase();
        }
    %>
    
    <% if (request.getMethod().equals("POST")) {
           String nome = request.getParameter("nome");
           if (nome != null && !nome.isEmpty()) { %>
               <p>O nome digitado em maiúsculo é: <%= parseNameToUpperCase(nome) %></p>
           <% } else { %>
               <p style="color: red;">Por favor, insira um nome.</p>
           <% }
       } %>
    
    <form method="post">
        <label for="nome">Digite seu nome:</label>
        <input type="text" id="nome" name="nome" required>
        <button type="submit">Enviar</button>
    </form>
</body>
</html>