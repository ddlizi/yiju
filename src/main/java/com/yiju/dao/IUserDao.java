package com.yiju.dao;

import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfo;
import org.apache.ibatis.annotations.Param;

/**
 *  数据库交互层
 */
public interface IUserDao {

    // 登录
    UserInfo findUserByPhone(String phone);


    void addUser(@Param("phone") String phone, @Param("password") String password);

    void saveEdit(UserInfo userInfo);

    UserAuth findUserAuthById(Integer userId);
}
