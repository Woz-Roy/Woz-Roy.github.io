package com.wang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Purchase {
    private Integer id;
    private Integer goods_id;
    private String amount;
    private String price;
    private Date purchase_time;
    private Integer supplier_id;
    private Integer purchase_user_id;
    private String purchase_user;
}
