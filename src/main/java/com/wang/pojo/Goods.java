package com.wang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Goods {
    private Integer id;
    private String name;
    private String code;
    private String specs;
    private String last_purchase_price;
    private String cost_price;
    private String price;
    private String unit;
    private Integer status;
}
