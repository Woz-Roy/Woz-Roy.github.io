package com.wang.service;

import com.wang.dao.UserMapper;
import com.wang.pojo.Page;
import com.wang.pojo.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService { //199000133王者
    @Autowired
    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public Users checkLogin(String account, String password) {
        return userMapper.checkLogin(account,password);
    }

    public int addUser(Users users) {
        return userMapper.addUser(users);
    }

    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }

    public int updateUser(Users users) {
        return userMapper.updateUser(users);
    }

    public Users queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    public List<Users> queryAllUser() {
        return userMapper.queryAllUser();
    }

    public Users queryUserByName(String name){
        return userMapper.queryUserByName(name);
    }





}
