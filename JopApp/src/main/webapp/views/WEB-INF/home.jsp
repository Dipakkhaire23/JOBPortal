<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Job Portal</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        /* Navbar */
        .navbar {
            background-color: #457b9d;
            padding: 1rem;
        }

        .navbar-brand {
            font-size: 2rem;
            font-weight: bold;
            color: #f1faee;
        }

        .navbar-nav .nav-link {
            color: #f1faee !important;
            margin-right: 10px;
            font-size: 1.1rem;
        }

        .navbar-nav .nav-link:hover {
            text-decoration: underline;
        }

        /* Page Content */
        .container {
            margin-top: 50px;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #1d3557;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #457b9d;
        }

        /* Footer */
        .footer {
            background-color: #1d3557;
            color: #f1faee;
            text-align: center;
            padding: 10px 0;
            margin-top: 30px;
        }

        .footer a {
            color: #a8dadc;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">Job Portal</a>
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

    <!-- Main Content -->
    <div class="container">
        <div class="row text-center">
            <!-- Card 1 -->
            <div class="col-md-6 mb-4">
                <div class="card bg-warning">
                    <div class="card-body">
                        <h5 class="card-title">View All Jobs</h5>
                        <p>Explore job opportunities from various domains.</p>
                        <form action="/viewalljobs" method="get">
                            <button type="submit" class="btn btn-primary">View Jobs</button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-md-6 mb-4">
                <div class="card bg-light">
                    <div class="card-body">
                        <h5 class="card-title">Add a New Job</h5>
                        <p>Post a new job listing for your company.</p>
                        <form action="/addJob" method="get">
                            <button type="submit" class="btn btn-primary">Add Job</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 Job Portal. All rights reserved. | <a href="https://telusko.com/">Visit Telusko</a>
            </p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
</body>

</html>
