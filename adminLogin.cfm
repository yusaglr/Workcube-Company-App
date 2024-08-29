<!DOCTYPE html>
<html>
<head>
    <title>Admin Girişi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        input {
            padding: 10px;
            margin: 10px;
            font-size: 16px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            margin: 10px;
        }
        .message {
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Admin Girişi</h1>
    <form action="validateAdmin.cfm" method="post">
        <input type="text" name="adminName" placeholder="Admin Adı" required><br>
        <input type="password" name="password" placeholder="Şifre" required><br>
        <button type="submit">Giriş Yap</button>
    </form>
</body>
</html>
