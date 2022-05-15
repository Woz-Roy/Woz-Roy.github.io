package com.wang.service;

import com.wang.pojo.Purchase;

import java.util.List;

public interface PurchaseService {
    //查询全部进货信息，返回一个list集合
    List<Purchase> queryAllPurchase();

    //增加一个进货信息
    int addPurchase(Purchase purchase);
}
