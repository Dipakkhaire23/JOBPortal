<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.alpha.JobApp.model.JobPost" %>
<%@ page import="com.alpha.JobApp.repo.jobrepo" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f1faee;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #457b9d;
        }

        .navbar-brand {
            color: #f1faee !important;
        }

        .nav-link {
            color: #f1faee !important;
        }

        .card {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: bold;
        }

        .card-body {
            background-color: #1d3557;
            color: #f1faee;
        }

        .card-footer {
            background-color: #457b9d;
            color: #f1faee;
        }

        h2 {
            color: #1d3557;
            font-weight: bold;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">Job Portal Web App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://telusko.com/">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Job Post List</h2>

    <div class="row row-cols-1 row-cols-md-2 g-4">
        <ab:forEach var="jobPos" items="${jobPosts}">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${jobPos.postProfile}</h5>
                        <p class="card-text">
                            <strong>Job-Id:</strong> ${jobPos.postId}
                        </p>
                        <p class="card-text">
                            <strong>Description:</strong> ${ jobPos.postDesc}
                        </p>
                        <p class="card-text">
                            <strong>Experience Required:</strong> ${jobPos.reqExperience} years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack Required:</strong>
                            <ul>
                                <ab:forEach var="tech" items="${jobPos.postTechStack}">
                                    <li>${tech}</li>
                                </ab:forEach>
                            </ul>
                        </p>
                    </div>
                    <div class="card-footer text-center">
                        <button class="btn btn-light">View Details</button>
                        <form action="updateJob" method="get" style="display:inline-block;">
                            <input type="hidden" name="postId" value="${jobPos.postId}">
                            <button type="submit" class="btn btn-warning">Update</button>
                        </form>
                        <form action="deleteJobPage" method="post" style="display:inline-block;">
                            <input type="hidden" name="postId" value="${jobPos.postId}">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </ab:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
