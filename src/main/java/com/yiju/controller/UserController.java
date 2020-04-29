package com.yiju.controller;

import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfo;
import com.yiju.service.IUserService;
import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private IUserService userService;


    @RequestMapping("/login.do")
    @ResponseBody
    public String doLogin(@Param(value = "phone") String phone,
                          @Param(value = "password") String password,
                          HttpSession session){
        // 1. 查不到用户的时候，提示注册
        // 2. 查的到， 但是密码不对    --------  重新登录
        // 3. 密码正确，登录成功
        JSONObject jsonObject = new JSONObject();
        UserInfo user = this.userService.findUserByPhone(phone);
        if ( user == null) {
            System.out.println("用户不存在");
            jsonObject.put("result","0");
        } else if (!password.equals(user.getPassword())){
            System.out.println("密码错误");
            jsonObject.put("result","1");
        } else {
            System.out.println("登录成功");
            // 把当前的登录信息，保存到session
            session.setAttribute("user",user);
            jsonObject.put("result","2");
        }
        return jsonObject.toString();

    }


    // 注册 signup.do
    @RequestMapping("/signup.do")
    @ResponseBody
    public String signup(@RequestParam("phone") String phone,
                         @RequestParam("password") String password){
        // 1. 首先要判断一下数据库中有没有这条数据
        JSONObject jsonObject = new JSONObject();
        UserInfo userInfo = this.userService.findUserByPhone(phone);
        if (userInfo !=null) {
            System.out.println("该用户已注册");
            jsonObject.put("result","0");
        } else {
            // 2. 正常注册
            this.userService.addUser(phone,password);
            jsonObject.put("result","1");
        }
        return jsonObject.toString();
    }

    // 修改个人信息 saveEdit.do
    @RequestMapping("/saveEdit.do")
    @ResponseBody
    public String saveEdit(UserInfo userInfo,HttpSession session){
        JSONObject jsonObject = new JSONObject();

        this.userService.saveEdit(userInfo);
        session.setAttribute("user",userInfo);
        return jsonObject.toString();
    }



    // 实名认证 verify.do
    @RequestMapping("/verify.do")
    public ModelAndView verify(HttpSession session){
        UserInfo user = (UserInfo) session.getAttribute("user");

        UserAuth userAuth  =  this.userService.findUserAuthById(user.getUserId());

        ModelAndView mv = new ModelAndView();
        mv.addObject("userAuth",userAuth);
        mv.setViewName("verify");

        return mv;

    }













}
