<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<title>home | MyMoviePlan</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
/* Adjust styling as needed */
.medicine-card {
	width: 200px;
	margin: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	text-align: center;
}

.medicine-card img {
	max-width: 150px;
	max-height: 150px;
	margin-bottom: 10px;
}

.navbar {
	background-color: #007bff; /* Set your desired header color */
}

.footer {
	background-color: #000000; /* Set the footer background color */
	color: #ffffff; /* Set the footer text color */
	padding: 10px;
	text-align: center;
	position: fixed;
	bottom: 0;
	width: 100%;
}

.navbar .nav-item .nav-link:hover {
	color: #ffffff; /* Set the hover color for header options */
}

.search-form {
	text-align: center;
	margin-bottom: 20px;
}

.search-input {
	width: 300px;
	max-width: 100%;
	padding: 10px;
	border-radius: 20px;
	border: 1px solid #ccc;
}

.search-submit {
	margin-left: 10px;
	padding: 10px 20px;
	border-radius: 20px;
	border: none;
	background-color: #007bff;
	color: #ffffff;
	cursor: pointer;
}

.search-submit:hover {
	background-color: #0056b3;
}
</style>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body
	background="https://img.freepik.com/free-photo/movie-background-collage_23-2149876003.jpg?w=1800&t=st=1689438541~exp=1689439141~hmac=ec97e680380feb756287843622c752c5ef14d4cc26fdefca2d3e932ac0fe23b9">
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand text-white">MyMoviePlan</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">	
				   <li class="nav-item"><a class="nav-link" style="color: white"
					href="homepage">back</a></li>
			</ul>
		</div>
	</nav>

	<!-- Medicine Listings -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="search-form">
					<form action="/find" method="get">
						<input type="text" name="name" class="search-input"
							placeholder="Enter your movie name" />
						<input type="submit" value="Search" class="search-submit" />
					</form>
				</div>
				<br><br>
				<div class="row">
					<%-- Example medicine cards, you can replace this with your own data --%>
					<table class="table" style="color: white">
						<thead>
							<tr>
								<th scope="col">Sl. No.</th>
								<th scope="col">Name of movie</th>
								<th scope="col">Language Available</th>
								<th scope="col">Price</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${result}" var="d">
								<tr>
									<th scope="row">${d.id}</th>
									<td>${d.name}</td>
									<td>
										<select required>
											<option value="op1">${d.language1}</option>
											<option value="op2">${d.language2}</option>
										</select>
									</td>
									<td>${d.price}</td>
									<td>
										<div class="input-group">
											<input type="number" id="quantity" name="quantity"
												min="1" max="10" step="1" value="1" />
										</div>
									</td>
									<td><a href="conf"><button type="submit">Book</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer">
		<p>&copy; 2012-2023 MyMoviePlan. All rights reserved.</p>
	</div>

	<!-- Bootstrap JS (jQuery and Popper.js required) -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
