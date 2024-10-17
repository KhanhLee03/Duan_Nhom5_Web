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
    <form action="" method="POST">
        <input id="newusername" type="text" name="newusername" placeholder="Tài khoản">
        <br>
        <input id="newpassword" type="password" name="newpassword" placeholder="Mật khẩu">
        <br>
        <input id="renewpassword" type="password" name="renewpassword" placeholder="Nhập lại mật khẩu">
        <br>
        <input id="sdt" type="text" name="sdt" placeholder="Nhập số điện thoại">
        <br>
        <button id="register" type="submit" name="register" value="register">Đăng ký</button>
    </form>
</body>
</html>
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Nhận giá trị từ form
    $newusername = $_POST['newusername'];
    $newpassword = $_POST['newpassword'];
    $renewpassword = $_POST['renewpassword'];
    $sdt = $_POST['sdt'];
    $action = $_POST['register'];
    if ($action === 'register') {
        if (!empty($newusername) && !empty($newpassword) && !empty($renewpassword) && !empty($sdt))
        {
            // Chuyển đến trang login.php sau khi đăng nhập thành công
            header('Location: login.php');
            exit();
        } else {
            echo '<p style="color: red;">Vui lòng nhập đầy đủ trường dữ liệu.</p>';
        } 
    }
}
?>