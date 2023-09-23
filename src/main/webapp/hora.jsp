<%@page import="java.text.SimpleDateFormat" import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabla de multiplicar</title>
</head>
<body>
    <h1>Tabla de multiplicar</h1>
    <table border="1">
        <%
        // Obtenemos la hora actual como un objeto Date
        Date horaActual = new Date();

        // Creamos un objeto SimpleDateFormat con el patrón "HH" para obtener solo las horas
        SimpleDateFormat formatoHora = new SimpleDateFormat("HH");

        // Formateamos la hora actual utilizando el patrón
        int horas = Integer.parseInt(formatoHora.format(horaActual));

        for (int i = 0; i < 11; i++) {
        %>
            <tr>
                <td><%= i %> x <%= horas %></td>
                <td> = </td>
                <td><%= i * horas %></td>
            </tr>
        <%
        }
        %>
    </table>
</body>
</html>

