<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f1f1;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
        }

        .signup-container {
            background: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            width: 300px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0 16px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0069d9;
        }

        .message {
            color: green;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="signup-container">
    <h2>Sign Up</h2>
    <form method="post" action="/register">
    <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="pass" placeholder="Password" required />
        <input type="submit" value="Register" />
    </form>
    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>
</div>
</body>
</html>
