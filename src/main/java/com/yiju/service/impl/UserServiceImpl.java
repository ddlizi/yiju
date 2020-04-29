package com.yiju.service.impl;

import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfo;
import com.yiju.dao.IUserDao;
import com.yiju.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;



    @Override
    public UserInfo findUserByPhone(String phone) {
        return this.userDao.findUserByPhone(phone);
    }

    @Override
    public void addUser(String phone, String password) {
        this.userDao.addUser(phone,password);
    }

    @Override
    public void saveEdit(UserInfo userInfo) {
        this.userDao.saveEdit(userInfo);
    }

    @Override
    public UserAuth findUserAuthById(Integer userId) {
        return this.userDao.findUserAuthById(userId);
    }
}
