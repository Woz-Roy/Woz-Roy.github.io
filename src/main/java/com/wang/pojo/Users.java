package com.wang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor  //199000133王者
public class Users {
    private Integer id;
    private String name;
    private String account;
    private String password;
    private Integer status;
}
