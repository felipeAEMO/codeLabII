<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="br.ucsal.app.todo.model.Tarefa"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista</title>

<!-- CSS only -->

<link rel="stylesheet" 
href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
 crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" 
crossorigin="anonymous"></script>

<!-- JS, Popper.js and JQuery -->

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" 
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
crossorigin="anonymous"></script>


</head>
<body>
List<Tarefa> tarefas = new ArrayList();
Tarefa t1 = new Tarefa();
t1.setTitulo("Tarefa 1 ");
t1.setDescricao("Descrição Tarefa 1");
t1.setConcluida(true);
tarefas.add(t1);
Tarefa t2 = new Tarefa();
t2.setTitulo("Tarefa 2");
t2.setDescricao("Descrição Tarefa 2");
t2.setConcluida(false);
tarefas.add(t2);

request.setAttribute("tarefas", tarefa);

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table border="1">
	<tr>
		<td>Titulo</td>
		<td>Descrição</td>
		<td>Concluida</td>
	</tr>
	<c:forEach var="task" items="${tarefas}">
	<tr>
	<td>${task.titulo }</td>
	<td>${task.descricao}</td>
	<td>${task.concluida ? 'SIM' : 'N' }</td>
	</tr> 
	<c:forEach>
</table>
</body>
</html>
