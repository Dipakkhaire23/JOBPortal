<!-- Update Page -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.alpha.JobApp.model.JobPost" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Job Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Update Job Post</h2>
    <form action="updateJob" method="post" class="mt-4">
    <div class="mb-3">
                <label for="postId" class="form-label">Job ID</label>
                <input type="text" class="form-control" id="postId" name="postId" value="${jobPost.postId}" required>
      </div>

        <div class="mb-3">
            <label for="postProfile" class="form-label">Job Profile</label>
            <input type="text" class="form-control" id="postProfile" name="postProfile" value="${jobPost.postProfile}" required>
        </div>
        <div class="mb-3">
            <label for="postDesc" class="form-label">Job Description</label>
            <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required>${jobPost.postDesc}</textarea>
        </div>
        <div class="mb-3">
            <label for="reqExperience" class="form-label">Required Experience (in years)</label>
            <input type="number" class="form-control" id="reqExperience" name="reqExperience" value="${jobPost.reqExperience}" required>
        </div>
        <div class="mb-3">
            <label for="postTechStack" class="form-label">Tech Stack (comma-separated)</label>
            <input type="text" class="form-control" id="postTechStack" name="postTechStack" value="${jobPost.postTechStack}" required>
        </div>
        <button type="submit" class="btn btn-primary">Update Job</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
