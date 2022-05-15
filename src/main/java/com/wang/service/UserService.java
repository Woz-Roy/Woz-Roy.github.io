package com.wang.service;

import com.wang.pojo.Page;
import com.wang.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {  //199000133王者

    //用户登录
    Users checkLogin(String account,String password);

    //增加一个user
    int addUser(Users users);

    //根据id删除一个user
    int deleteUserById(int id);

    //更新user
    int updateUser(Users users);

    //根据id查询,返回一个user
    Users queryUserById(int id);

    //查询全部user,返回list集合
    List<Users> queryAllUser();

    //根据用户名查询，返回一个user
    Users queryUserByName(String name);



}
