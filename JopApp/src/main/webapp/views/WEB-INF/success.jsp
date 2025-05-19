<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alpha.JobApp.model.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #81c784, #4caf50); /* Light Green to Light Blue gradient */
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #00796b;
            padding: 1rem;
        }

        .navbar-brand {
            font-size: 2rem;
            font-weight: bold;
            color: #ffffff;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
            margin-right: 10px;
            font-size: 1.1rem;
        }

        .navbar-nav .nav-link:hover {
            text-decoration: underline;
        }

        .container {
            margin-top: 50px;
        }

        h2 {
            font-size: 2rem;
            font-weight: bold;
            color: #004d40;
            margin-bottom: 20px;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }

        .card.border-dark {
            border: none;
            background-color: #004d40;
        }

        .card .card-body {
            color: #ffffff;
        }

        .card .card-title {
            font-size: 1.8rem;
            font-weight: bold;
        }

        .card .card-text {
            font-size: 1rem;
            margin-bottom: 10px;
        }

        .card-footer {
            background-color: #00796b;
            color: #ffffff;
            text-align: center;
            font-size: 0.9rem;
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            font-size: 0.95rem;
            color: #80deea;
        }

        .navbar-toggler-icon {
            background-color: #ffffff;
        }
    </style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#"> Job Portal Web App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewalljobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://telusko.com/">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>



<div class="container mt-5">
    <h2 class="mb-4 text-center">Job Post Details</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card border-dark bg-dark text-white">
                <div class="card-body">
                    <h5 class="card-title"> ${jobPost.getPostProfile()} </h5>
                    <p class="card-text">
                        <strong>Job-Id:</strong> ${ jobPost.getPostId()}
                    </p>
                    <p class="card-text">
                        <strong>Description:</strong> ${ jobPost.getPostDesc()}
                    </p>
                    <p class="card-text">
                        <strong>Experience Required:</strong> ${jobPost.getReqExperience()} years
                    </p>
                    <p class="card-text">
                        <strong>Tech Stack Required:</strong>
                        <ul>
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>
                    </p>
                </div>
                <div class="card-footer">
                    <!-- Optional footer content -->
                </div>
            </div>
        </div>
    </div>
</div>

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>

</body>
</html>
