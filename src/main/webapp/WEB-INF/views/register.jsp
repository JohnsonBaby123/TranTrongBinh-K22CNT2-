<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Đăng ký tài khoản</h2>
        <form action="register" method="post" onsubmit="return validateForm()">
            <label for="ttb_ho_ten">Họ và tên:</label>
            <input type="text" id="ttb_ho_ten" name="ttb_ho_ten" required>

            <label for="ttb_so_dien_thoai">Số điện thoại:</label>
            <input type="text" id="ttb_so_dien_thoai" name="ttb_so_dien_thoai" required>

            <label for="ttb_email">Email:</label>
            <input type="email" id="ttb_email" name="ttb_email" required>

            <label for="ttb_mat_khau">Mật khẩu:</label>
            <input type="password" id="ttb_mat_khau" name="ttb_mat_khau" required>

            <label for="ttb_xac_nhan_mat_khau">Xác nhận mật khẩu:</label>
            <input type="password" id="ttb_xac_nhan_mat_khau" required>

            <label for="ttb_vai_tro">Vai trò:</label>
            <select id="ttb_vai_tro" name="ttb_vai_tro">
                <option value="1">Ban quản lý</option>
                <option value="2">Cư dân</option>
            </select>

            <button type="submit">Đăng ký</button>
        </form>
    </div>
    
    <script>
        function validateForm() {
            var password = document.getElementById("ttb_mat_khau").value;
            var confirmPassword = document.getElementById("ttb_xac_nhan_mat_khau").value;
            if (password !== confirmPassword) {
                alert("Mật khẩu xác nhận không khớp!");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
