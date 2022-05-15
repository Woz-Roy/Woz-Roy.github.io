package com.wang.service;

import com.wang.dao.PurchaseMapper;
import com.wang.pojo.Purchase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PurchaseServiceImpl implements PurchaseService{
    @Autowired
    private PurchaseMapper purchaseMapper;
    public void setPurchaseMapper(PurchaseMapper purchaseMapper){
        this.purchaseMapper = purchaseMapper;
    }

    public List<Purchase> queryAllPurchase(){
        return purchaseMapper.queryAllPurchase();
    }

    public int addPurchase(Purchase purchase){
        return purchaseMapper.addPurchase(purchase);
    }
}
