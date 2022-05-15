package com.wang.controller;

import com.wang.pojo.Page;
import com.wang.pojo.Users;
import com.wang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller    //199000133王者
@RequestMapping(value = "/user",produces={"text/html;charset=UTF-8;","application/json;"})
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    //用户登录-get
    @GetMapping("/login")
    public String login(){
        return "login";
    }

    //用户登录-post
    @PostMapping("/login")
    @ResponseBody
    public String login(Users users, HttpServletRequest request){
        //System.out.println(users);
        Users find = userService.checkLogin(users.getAccount(),users.getPassword());
        //System.out.println(find);
        if(find==null){
            return "登录验证失败！账号错、密码错或用户被禁用";
        }
        //登录成功
        request.getSession().setAttribute("loginUser", find);
        return "ok";
    }

    //注销
    @RequestMapping("/loginOut")
    public String loginOut(HttpServletRequest request){
        request.getSession().removeAttribute("loginUser");
        return "login";
    }


    @RequestMapping("/allUser")
    public String list(Model model) {
        List<Users> list = userService.queryAllUser();
        model.addAttribute("list", list);
        return "allUser";
    }

    @RequestMapping("/toAddUser")
    public String toAddUser() {
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(Users users) {
        System.out.println(users);
        userService.addUser(users);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(Model model, int id) {
        Users users = userService.queryUserById(id);
        System.out.println(users);
        model.addAttribute("users", users);
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(Model model, Users user) {
        System.out.println(user);
        userService.updateUser(user);
        Users users = userService.queryUserById(user.getId());
        model.addAttribute("users", users);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/deleteUserById/{id}")
    public String deleteUser(@PathVariable("id") int id) {
        userService.deleteUserById(id);
        return "redirect:/user/allUser";
    }


    @RequestMapping("/queryUserByName")
    public String queryUserByName(Model model,String name){
        System.out.println(name);
        Users users = userService.queryUserByName(name);
        System.out.println(users);
        List<Users> list = new ArrayList<>();
        list.add(users);
        model.addAttribute("list",list);
        return "allUser";
    }



}
