CREATE DATABASE QuanLyChungCu;
USE QuanLyChungCu;

CREATE TABLE NguoiDung (
    ma_nguoi_dung INT PRIMARY KEY AUTO_INCREMENT,
    ho_ten VARCHAR(100) NOT NULL,
    so_dien_thoai VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mat_khau VARCHAR(255) NOT NULL,
    vai_tro TINYINT NOT NULL COMMENT '1 = Ban quản lý, 2 = Cư dân',
    ngay_tao DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE CanHo (
    ma_can_ho INT PRIMARY KEY AUTO_INCREMENT,
    so_can_ho VARCHAR(10) UNIQUE NOT NULL,
    tang TINYINT NOT NULL,
    loai_can_ho VARCHAR(10) NOT NULL COMMENT '1PN, 2PN, 3PN',
    dien_tich FLOAT NOT NULL,
    trang_thai TINYINT NOT NULL COMMENT '1 = Có người ở, 2 = Trống, 3 = Đang thuê',
    chu_ho_id INT,
    FOREIGN KEY (chu_ho_id) REFERENCES NguoiDung(ma_nguoi_dung)
);

CREATE TABLE CuDan (
    ma_cu_dan INT PRIMARY KEY AUTO_INCREMENT,
    ma_nguoi_dung INT,
    ma_can_ho INT,
    quan_he TINYINT(1) NOT NULL COMMENT '1 = Chủ hộ, 2 = Người thuê, 3 = Thành viên gia đình',
    FOREIGN KEY (ma_nguoi_dung) REFERENCES NguoiDung(ma_nguoi_dung),
    FOREIGN KEY (ma_can_ho) REFERENCES CanHo(ma_can_ho)
);

CREATE TABLE ThongBao (
    ma_thong_bao INT PRIMARY KEY AUTO_INCREMENT,
    tieu_de VARCHAR(255) NOT NULL,
    noi_dung TEXT NOT NULL,
    nguoi_dang INT,
    ngay_dang DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (nguoi_dang) REFERENCES NguoiDung(ma_nguoi_dung)
);

CREATE TABLE TienIch (
    ma_tien_ich INT PRIMARY KEY AUTO_INCREMENT,
    ten_tien_ich VARCHAR(100) NOT NULL,
    mo_ta TEXT NOT NULL,
    gio_hoat_dong VARCHAR(50) NOT NULL
);

CREATE TABLE DatTienIch (
    ma_dat_lich INT PRIMARY KEY AUTO_INCREMENT,
    ma_nguoi_dung INT,
    ma_tien_ich INT,
    thoi_gian_dat DATETIME NOT NULL,
    trang_thai TINYINT NOT NULL COMMENT '1 = Chờ duyệt, 2 = Đã duyệt, 3 = Bị từ chối',
    FOREIGN KEY (ma_nguoi_dung) REFERENCES NguoiDung(ma_nguoi_dung),
    FOREIGN KEY (ma_tien_ich) REFERENCES TienIch(ma_tien_ich)
);
select * from Nguoidung
select * from Canho
select * from CuDan
select * from ThongBao
select * from TienIch
select * from DatTienIch

INSERT INTO NguoiDung (ho_ten, so_dien_thoai, email, mat_khau, vai_tro, ngay_tao) VALUES
('Nguyen Van Anh', '0912345678', 'nva@gmail.com', 'hashed_password1', 1, NOW()),
('Tran Thi Binh', '0923456789', 'ttb@gmail.com', 'hashed_password2', 2, NOW()),
('Le Van Cuong', '0934567890', 'lvc@gmail.com', 'hashed_password3', 2, NOW());

INSERT INTO CanHo (so_can_ho, tang, loai_can_ho, dien_tich, trang_thai, chu_ho_id) VALUES
('101', 1, '1PN', 45.5, 1, 1),
('102', 1, '2PN', 65.0, 2, 2),
('201', 2, '3PN', 85.0, 3, 3);

INSERT INTO CuDan (ma_nguoi_dung, ma_can_ho, quan_he) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO ThongBao (tieu_de, noi_dung, nguoi_dang, ngay_dang) VALUES
('Thông báo họp cư dân', 'Cuộc họp cư dân sẽ diễn ra vào 10h sáng Chủ Nhật.', 1, NOW()),
('Bảo trì thang máy', 'Thang máy sẽ được bảo trì vào ngày 15.', 1, NOW());

INSERT INTO TienIch (ten_tien_ich, mo_ta, gio_hoat_dong) VALUES
('Hồ bơi', 'Hồ bơi ngoài trời mở cửa 6h-22h.', '06:00 - 22:00'),
('Phòng gym', 'Phòng gym đầy đủ thiết bị, mở cửa 5h-23h.', '05:00 - 23:00');

INSERT INTO DatTienIch (ma_nguoi_dung, ma_tien_ich, thoi_gian_dat, trang_thai) VALUES
(2, 1, '2025-03-01 07:00:00', 1),
(3, 2, '2025-03-02 18:00:00', 2);
 