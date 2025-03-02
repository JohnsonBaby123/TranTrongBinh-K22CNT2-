<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Form</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #007BFF;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }
        .btn:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>View Form Details</h2>
        <div class="form-group">
            <label for="id">ID:</label>
            <input type="text" id="id" class="form-control" value="${form.id}" readonly>
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" class="form-control" value="${form.name}" readonly>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" id="email" class="form-control" value="${form.email}" readonly>
        </div>
        <div class="form-group">
            <label for="role">Role:</label>
            <input type="text" id="role" class="form-control" value="${form.role}" readonly>
        </div>
        <a href="/editform?id=${form.id}" class="btn">Edit</a>
    </div>
</body>
</html>
