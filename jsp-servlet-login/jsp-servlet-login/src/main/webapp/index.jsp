<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            margin-top: 100px;
            background: #f8fafc;
        }
        .login-container {
            width: 320px;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, .12);
            text-align: center;
        }
        input {
            box-sizing: border-box;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: none;
            border-radius: 4px;
            background: #1b2a7a;
            color: white;
            cursor: pointer;
        }
        button:hover { background: #263ca8; }
    </style>
</head>
<body>
    <div class="login-container">
        <h2 style="color: #1b2a7a;">System Login</h2>
        <form action="login" method="POST">
            <input type="text" name="username" placeholder="Enter username"
                   aria-label="Username" required>
            <input type="password" name="password" placeholder="Enter password"
                   aria-label="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
