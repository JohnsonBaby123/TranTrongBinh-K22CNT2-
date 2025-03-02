<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa Admin</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Chỉnh sửa Admin</h2>
        <form action="/admin/update" method="post">
            <input type="hidden" name="ttb_ma_nguoi_dung" value="${admin.ttb_ma_nguoi_dung}">
            
            <label for="ttb_ho_ten">Họ và Tên:</label>
            <input type="text" id="ttb_ho_ten" name="ttb_ho_ten" value="${admin.ttb_ho_ten}" required>
            
            <label for="ttb_so_dien_thoai">Số Điện Thoại:</label>
            <input type="text" id="ttb_so_dien_thoai" name="ttb_so_dien_thoai" value="${admin.ttb_so_dien_thoai}" required>
            
            <label for="ttb_email">Email:</label>
            <input type="email" id="ttb_email" name="ttb_email" value="${admin.ttb_email}" required>
            
            <label for="ttb_mat_khau">Mật Khẩu:</label>
            <input type="password" id="ttb_mat_khau" name="ttb_mat_khau" required>
            
            <label for="ttb_vai_tro">Vai Trò:</label>
            <select id="ttb_vai_tro" name="ttb_vai_tro" required>
                <option value="1" ${admin.ttb_vai_tro == 1 ? 'selected' : ''}>Ban quản lý</option>
                <option value="2" ${admin.ttb_vai_tro == 2 ? 'selected' : ''}>Cư dân</option>
            </select>
            
            <button type="submit">Cập nhật</button>
        </form>
    </div>
</body>
</html>
