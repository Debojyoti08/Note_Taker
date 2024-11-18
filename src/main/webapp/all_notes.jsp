<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.factoryprovider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: All Notes</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes</h1>

		<div class="row">
			<div class="col-12"></div>
		</div>

		<%
		Session s = factoryprovider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();

		for (Note note : list) {
		%>

		<div class="card mt-3">
			<img class="card-img-top m-4 mx-auto" style = "max-width:100px" src="Image/notepad.png" alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title"><%= note.getTitle() %></h5>
				<p class="card-text">
					<%= note.getContent() %>
				</p>
				<div class = "container text-center mt-2">
					<a href="deleteservlet?note_id = <%= note.getId() %>" class="btn btn-danger">Delete</a>
					<a href="#" class="btn btn-primary">Edit</a>
				</div>
			</div>
		</div>

		<%
		}

		s.close();
		%>
	</div>

</body>
</html>