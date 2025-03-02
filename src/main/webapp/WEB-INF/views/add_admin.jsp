<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Quản Trị Viên</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px #888;
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #007bff;
        }
        label {
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Thêm Quản Trị Viên</h2>
        <form action="addAdmin" method="post" onsubmit="return validateForm()">
            <label for="ttb_ho_ten">Họ Tên:</label>
            <input type="text" id="ttb_ho_ten" name="ttb_ho_ten" required>

            <label for="ttb_so_dien_thoai">Số Điện Thoại:</label>
            <input type="text" id="ttb_so_dien_thoai" name="ttb_so_dien_thoai" required>

            <label for="ttb_email">Email:</label>
            <input type="email" id="ttb_email" name="ttb_email" required>

            <label for="ttb_mat_khau">Mật Khẩu:</label>
            <input type="password" id="ttb_mat_khau" name="ttb_mat_khau" required>

            <label for="confirm_password">Xác Nhận Mật Khẩu:</label>
            <input type="password" id="confirm_password" required>

            <input type="hidden" name="ttb_vai_tro" value="1"> <!-- 1 = Quản trị viên -->

            <button type="submit" class="btn">Thêm Quản Trị Viên</button>
        </form>
    </div>
    <script>
        function validateForm() {
            var password = document.getElementById("ttb_mat_khau").value;
            var confirmPassword = document.getElementById("confirm_password").value;
            if (password !== confirmPassword) {
                alert("Mật khẩu xác nhận không khớp!");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
