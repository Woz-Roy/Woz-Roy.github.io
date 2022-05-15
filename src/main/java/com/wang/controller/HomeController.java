package com.wang.controller;

import com.wang.pojo.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/home")   //199000133王者
public class HomeController {
    /**
     * 用户首页
     */
    @RequestMapping("/index")
    public String index(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        if (session.getAttribute("loginUser") == null) {
            return "login";
        } else {
            Users loginUser = (Users) session.getAttribute("loginUser");
            String userName = loginUser.getName();
            model.addAttribute("userName", userName);
            return "index";
        }
    }
}
