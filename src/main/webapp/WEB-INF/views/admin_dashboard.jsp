<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .dashboard {
            width: 80%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .dashboard h1 {
            text-align: center;
            color: #007BFF;
        }
        .cards {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .card {
            background: #007BFF;
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 10px;
            width: 20%;
        }
        .card h2 {
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="dashboard">
        <h1>Bảng Điều Khiển Quản Trị</h1>
        <div class="cards">
            <div class="card">
                <h2>Người Dùng</h2>
                <p>100</p>
            </div>
            <div class="card">
                <h2>Căn Hộ</h2>
                <p>50</p>
            </div>
            <div class="card">
                <h2>Thông Báo</h2>
                <p>20</p>
            </div>
            <div class="card">
                <h2>Tiện Ích</h2>
                <p>10</p>
            </div>
        </div>
    </div>
</body>
</html>
