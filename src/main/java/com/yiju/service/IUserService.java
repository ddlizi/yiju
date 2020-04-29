package com.yiju.service;

import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfo;

/**
 * 业务逻辑层
 */
public interface IUserService {


    // 登录
    UserInfo findUserByPhone(String phone);

    // 注册
    void addUser(String phone, String password);

    void saveEdit(UserInfo userInfo);

    UserAuth findUserAuthById(Integer userId);
}
