<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Lista de Nomes</h1>
    
    <% java.util.ArrayList<String> nomes = new java.util.ArrayList<String>();
       nomes.add("Fulano");
       nomes.add("Ciclano");
       nomes.add("Beltrano");
       nomes.add("Savage");
    %>
    
    <ul>
        <% for (String nome : nomes) { %>
            <li><%= nome %></li>
        <% } %>
    </ul>
</body>
</html>