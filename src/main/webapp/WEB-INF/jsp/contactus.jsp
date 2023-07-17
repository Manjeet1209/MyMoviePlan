<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        /* Adjust styling as needed */
        .contact-form {
            max-width: 400px;
            margin: 0 auto;
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
    </style>
</head>
<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #007bff;">
        <a class="navbar-brand" style="color: white;">MyMoviePlan</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" style="color: white;" href="/">Home</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Contact Form -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Contact Us</h2>
                <p>For any inquiries, please reach out to us:</p>
                <ul>
                    <li>Email: manjeet1209@gmail.com</li>
                    <li>Phone: xxxxxxxxxx</li>
                    <li>Address: 123 xyz Street, City, State, Country</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2023 MyMoviePlan. All rights reserved.</p>
    </div>

    <!-- Bootstrap JS (jQuery and Popper.js required) -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>