package com.springmvc.controllers;

import com.springmvc.beans.TtbNguoiDung;
import com.springmvc.dao.TtbNguoiDungDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/nguoidung")
public class TtbNguoiDungController {

    @Autowired
    private TtbNguoiDungDao nguoiDungDao;

    // Trang danh sách người dùng
    @GetMapping
    public String listNguoiDung(Model model) {
        try {
            List<TtbNguoiDung> list = nguoiDungDao.getAllNguoiDung();
            model.addAttribute("nguoiDungs", list);
            return "nguoidung/list";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Lỗi khi lấy danh sách người dùng!");
            return "error";
        }
    }

    // Hiển thị form thêm người dùng
    @GetMapping("/add")
    public String addNguoiDungForm(Model model) {
        model.addAttribute("nguoiDung", new TtbNguoiDung());
        return "nguoidung/add";
    }

    // Xử lý thêm người dùng
    @PostMapping("/add")
    public String addNguoiDung(@ModelAttribute("nguoiDung") TtbNguoiDung nguoiDung, Model model) {
        try {
            nguoiDungDao.saveNguoiDung(nguoiDung);
            return "redirect:/nguoidung";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Lỗi khi thêm người dùng!");
            return "nguoidung/add";
        }
    }

    // Hiển thị form chỉnh sửa
    @GetMapping("/edit/{id}")
    public String editNguoiDungForm(@PathVariable("id") int id, Model model) {
        try {
            TtbNguoiDung nguoiDung = nguoiDungDao.getNguoiDungById(id);
            if (nguoiDung == null) {
                return "redirect:/nguoidung";
            }
            model.addAttribute("nguoiDung", nguoiDung);
            return "nguoidung/edit";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Lỗi khi tải thông tin người dùng!");
            return "error";
        }
    }

    // Xử lý chỉnh sửa người dùng
    @PostMapping("/edit")
    public String editNguoiDung(@ModelAttribute("nguoiDung") TtbNguoiDung nguoiDung, Model model) {
        try {
            nguoiDungDao.updateNguoiDung(nguoiDung);
            return "redirect:/nguoidung";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Lỗi khi cập nhật người dùng!");
            return "nguoidung/edit";
        }
    }

    // Xóa người dùng
    @GetMapping("/delete/{id}")
    public String deleteNguoiDung(@PathVariable("id") int id, Model model) {
        try {
            nguoiDungDao.deleteNguoiDung(id);
            return "redirect:/nguoidung";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Lỗi khi xóa người dùng!");
            return "error";
        }
    }
}
