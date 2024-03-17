<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <% 
        boolean isUserAuthenticated = true;
    %>
    
    <h1>Usuário Autenticado?</h1>
    
    <% if (isUserAuthenticated) { %>
        <p style="color: green;">Usuário autenticado no sistema</p>
    <% } else { %>
        <p style="color: red;">Usuário não autenticado</p>
    <% } %>
</body>
</html>