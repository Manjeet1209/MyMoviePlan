<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
/* Adjust styling as needed */
.payment-form {
    max-width: 400px;
    margin: 0 auto;
}

.navbar {
    background-color: #007bff; /* Set your desired header color */
    color: white; /* Set the header text color */
    padding: 10px;
    text-align: center;
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
.button {
    background-color: green;
    border-color: red;
    color: white;
}
</style>
</head>
<body>
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
                <li class="nav-item"><a class="nav-link" style="color: white" href="/homepage">Home</a></li>
            </ul>
        </div>
    </nav>

    <!-- Select date and time options -->
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2>Select Date and Time</h2>
                <form>
                    <div class="form-group">
                        <label for="date">Date:</label>
                        <input type="date" class="form-control" id="date" min="<%= java.time.LocalDate.now() %>" name="date" required>
                    </div>
                    <div class="form-group">
                        <label for="time">Time:</label>
                        <select class="form-control" id="time" name="time" required>
                            <option >09:35 AM</option>
                            <option >01:45 PM</option>
                            <option >03:30 PM</option>
                            <option >06:40 PM</option>
                            <option >09:30 PM</option>
                        </select>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Payment link -->
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <center><a href="book" class="button">Proceed to pay</a></center>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2012-2023 MyMoviePlan. All rights reserved.</p>
    </div>

    <!-- Bootstrap JS (jQuery and Popper.js required) -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
