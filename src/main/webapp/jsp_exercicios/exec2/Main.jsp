<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Lista de Números de 1 a 10</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Número</th>
            </tr>
        </thead>
        <tbody>
            <% for(int i = 1; i <= 10; i++) { %>
                <tr>
                    <td><%= i %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>