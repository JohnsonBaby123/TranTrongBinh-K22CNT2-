package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.model.TtbNguoiDung;

public class TtbNguoiDungDao {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int save(TtbNguoiDung user) {
        String sql = "INSERT INTO TtbNguoiDung (ttb_ho_ten, ttb_so_dien_thoai, ttb_email, ttb_mat_khau, ttb_vai_tro) VALUES (?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, user.getHoTen(), user.getSoDienThoai(), user.getEmail(), user.getMatKhau(), user.getVaiTro());
    }

    public int update(TtbNguoiDung user) {
        String sql = "UPDATE TtbNguoiDung SET ttb_ho_ten=?, ttb_so_dien_thoai=?, ttb_email=?, ttb_mat_khau=?, ttb_vai_tro=? WHERE ttb_ma_nguoi_dung=?";
        return jdbcTemplate.update(sql, user.getHoTen(), user.getSoDienThoai(), user.getEmail(), user.getMatKhau(), user.getVaiTro(), user.getId());
    }

    public int delete(int id) {
        String sql = "DELETE FROM TtbNguoiDung WHERE ttb_ma_nguoi_dung=?";
        return jdbcTemplate.update(sql, id);
    }

    public TtbNguoiDung getById(int id) {
        String sql = "SELECT * FROM TtbNguoiDung WHERE ttb_ma_nguoi_dung=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new UserMapper());
    }

    public List<TtbNguoiDung> getAll() {
        String sql = "SELECT * FROM TtbNguoiDung";
        return jdbcTemplate.query(sql, new UserMapper());
    }

    class UserMapper implements RowMapper<TtbNguoiDung> {
        public TtbNguoiDung mapRow(ResultSet rs, int rowNum) throws SQLException {
            TtbNguoiDung user = new TtbNguoiDung();
            user.setId(rs.getInt("ttb_ma_nguoi_dung"));
            user.setHoTen(rs.getString("ttb_ho_ten"));
            user.setSoDienThoai(rs.getString("ttb_so_dien_thoai"));
            user.setEmail(rs.getString("ttb_email"));
            user.setMatKhau(rs.getString("ttb_mat_khau"));
            user.setVaiTro(rs.getInt("ttb_vai_tro"));
            return user;
        }
    }
}
