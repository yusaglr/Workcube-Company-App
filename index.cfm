<!DOCTYPE html>
<html>
<head>
    <title>Web Sitesi Giriş</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <h1>Hoşgeldiniz!</h1>
    <p>Giriş yapmak için bir seçenek belirleyin:</p>
    
    <form action="adminLogin.cfm" method="post">
        <button type="submit">Admin Giriş</button>
    </form>
    
    <form action="employeeLogin.cfm" method="post">
        <button type="submit">Çalışan Giriş</button>
    </form>
</body>
</html>
