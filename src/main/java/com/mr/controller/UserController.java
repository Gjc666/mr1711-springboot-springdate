package com.mr.controller;

import com.mr.model.User;
import com.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by ${Gjc} on 2018/6/3.
 */
@Controller
public class UserController {
  @Autowired
  private UserService userService;


  /**
   * cha
   * @param map
   * @return
   */
    @GetMapping("/user")
  public String findAll(ModelMap map){

      List<User> list = userService.findAll();
      map.put("list",list);
     return "index";
    }

  /**
   * 删
   * @param id
   * @return
   */
  @DeleteMapping("/delete/{id}")
   public String delUser(@PathVariable("id") Integer id){
    userService.delUser(id);
    return "redirect:/user";
   }
  /**
   * 增
   */
  @RequestMapping("/toAddPage")
  public String toAddPage(){
    return "add";
  }
  @PostMapping("/add")
  public String add(User user){
    userService.addUser(user);
    return "redirect:/user";
  }
  /**
   * 修
   */
  @RequestMapping("/toUP/{id}")
  public String toUP(@PathVariable("id") Integer id , ModelMap map){
    User user = userService.toUP(id);
    map.put("user",user);
    return "update";
  }
  @PutMapping("/update")
  public String update(User user){
    userService.update(user);
    return "redirect:/user";
  }
}

