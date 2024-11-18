<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container-fluid p-10 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please fill your note</h1>
		<br>

		<!-- form -->
		<form action = "savenoteservlet" method = "post">
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> 
				<input
					name = "title"
					required
					type="text" 
					class="form-control" 
					id="title"
					aria-describedby="emailHelp"
					placeholder = "Enter here"> 
					<!--small id="emailHelp"
					class="form-text text-muted">
					with anyone else.
					</small -->
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				
				<textarea 
				name = "content"
				id = "content"
				placeholder = "Enter your content here"
				class = "form-control"
				style = "height: 300px"
				></textarea>
				
			</div>
			<button type="submit" class="btn btn-primary">Add</button>
		</form>
	</div>
</body>
</html>