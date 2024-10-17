<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="register.css">
</head>
<body>
    <h1 id="title"><strong>Đăng ký</strong></h1>
    <form action="giaodien.php" method="POST">
        <input id="newusername" type="text" name="newusername" placeholder="Tài khoản">
        <br>
        <input id="newpassword" type="password" name="newpassword" placeholder="Mật khẩu">
        <br>
        <input id="renewpassword" type="password" name="renewpassword" placeholder="Nhập lại mật khẩu">
        <br>
        <input id="sdt" type="text" name="sdt" placeholder="Nhập số điện thoại">
        <br>
        <button action="action" id="register" type="submit" name="register">Đăng ký</button>
    </form>
</body>
</html>