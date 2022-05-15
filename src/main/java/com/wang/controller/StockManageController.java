package com.wang.controller;

import com.wang.dao.PurchaseMapper;
import com.wang.pojo.Purchase;
import com.wang.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/stock")  //199000133王者
public class StockManageController {
    @Autowired
    @Qualifier("PurchaseServiceImpl")
    private PurchaseService purchaseService;

    @RequestMapping("/allPurchase")
    public String List(Model model){
        List<Purchase> list = purchaseService.queryAllPurchase();
        model.addAttribute("list",list);
        return "stockManage";
    }

    @RequestMapping("/toaddPurchase")
    public String toaddPurchase(){
        return "addPurchase";
    }

    @RequestMapping("/addPurchase")
    public String addPurchase(Purchase purchase){
        System.out.println(purchase);
        purchaseService.addPurchase(purchase);
        return "redirect:/stock/allPurchase";
    }
}
