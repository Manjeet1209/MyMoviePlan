<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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


<title>home|MyMoviePlan</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
/* Adjust styling as needed */
#myHeading {
	color: white;
}

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
</style>
<script>
	$(document).ready(
			function() {

				function filterMedicineListings() {
					var keyword = $('#search-input').val().toLowerCase();

					$('.medicine-card').each(
							function() {
								var medicineName = $(this).find(
										'.medicine-name').text().toLowerCase();
								if (medicineName.includes(keyword)) {
									$(this).show();
								} else {
									$(this).hide();
								}
							});
				}

				// Event handler for search input
				$('#search-input').on('input', function() {
					filterMedicineListings();
				});
			});
</script>
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
				<!-- <li class="nav-item"><a class="nav-link" style="color: white"
					href="login">login</a></li> -->
				<li class="nav-item"><a class="nav-link" style="color: white"
					href="register">login/Register</a></li>
			</ul>
		</div>
	</nav>
	<h5 id="myHeading" align="center" style="background-color: white;">${lmsg}</h5>

	<!-- Medicine Listings -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<center>
					<h2 style="color: white">Blockbuster Movies going on</h2>
				</center>
				<div class="row">
					<%-- Example medicine cards, you can replace this with your own data --%>
					<table class="table" style="color: white">
						<thead>
							<tr>
								<th scope="col">Sl. No.</th>
								<th scope="col">Name of movie</th>
								<th scope="col">Language Available</th>
								<th scope="col">Price per ticket</th>
								<th scope="col"> </th>
								<th scope="col"> </th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${data}" var="d">
								<tr>
									<th scope="row">${d.id}</th>
									<td>${d.name}</td>
									<td><select name="language" required>
											<option value="op1">${d.language1}</option>
											<option value="op2">${d.language2}</option>
									</select></td>
									<td>${d.price}</td>
									<td>
										<div class="input-group">	
											<input type="number" id="quantity" name="quantity" min="1"
												max="10" step="1" value="1" />											
											</div>
										</div>
									</td>
									<td><a href="booking"><button type="submit">Book</button></td>
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