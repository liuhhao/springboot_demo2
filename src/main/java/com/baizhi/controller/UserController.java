package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("selectOne")
    public String selectOne(ModelMap modelMap) {
        User user=userService.selectOne(1);
        modelMap.addAttribute("user",user);
        return "index";
    }

    @RequestMapping("selectAll")
    public String selectAll(ModelMap modelMap) {
        List<User> list = userService.selectAll();
        modelMap.addAttribute("list", list);
        return "UserList";
    }

    @RequestMapping("addUser")
    public String addUser(User user) {
        userService.insert(user);
        return "redirect:/user/selectAll.do";
    }
}
