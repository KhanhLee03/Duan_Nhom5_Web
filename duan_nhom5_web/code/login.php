<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <h1 id="title"><strong>Đăng nhập</strong></h1>
    <form action="" method="POST">
        <input id="username" type="text" name="username" placeholder="Tài khoản">
        <br>
        <input id="password" type="password" name="password" placeholder="Mật khẩu">
        <br>
        <button id="login" type="submit" name="action" value="login" >Đăng nhập</button>
        <button id="register" type="submit" name="action" value="register">Đăng ký</button>
    </form>
    <!-- khanh an cut -->
</body>
</html>
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Nhận giá trị từ form
    $username = $_POST['username'];
    $password = $_POST['password'];
    $action = $_POST['action'];
    if ($action === 'login') {
        // Kiểm tra tên đăng nhập và mật khẩu không rỗng
        if (!empty($username) && !empty($password)) {
            // Chuyển đến trang giaodien.php sau khi đăng nhập thành công
            header('Location: giaodien.php');
            exit(); // Đảm bảo dừng thực hiện mã tiếp theo
        } else {
            echo '<p style="color: red;">Vui lòng nhập tên đăng nhập và mật khẩu.</p>';
        } 
    } elseif ($action === 'register') {
        // Chuyển đến trang register.php để đăng ký
        header('Location: register.php');
        exit(); // Đảm bảo dừng thực hiện mã tiếp theo
    }
}
?>