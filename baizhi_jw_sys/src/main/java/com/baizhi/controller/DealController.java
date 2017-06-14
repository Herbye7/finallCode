package com.baizhi.controller;

import com.baizhi.entity.Deal;
import com.baizhi.service.DealService;
import com.github.pagehelper.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by lenovo on 2017/6/14.
 */
@Controller
@RequestMapping("/deal")
public class DealController {

    @Resource
    private DealService dealService;

    //showAll
    @RequestMapping("/showAll")
    @ResponseBody
    public Map<String,Object> showAll(int page, int rows){
        Page<Deal> deals = dealService.queryAll(page, rows);
        Map<String,Object> maps = new HashMap<String, Object>();
        maps.put("rows",deals);
        maps.put("total",deals.getTotal());
        return maps;
    }



    @RequestMapping("/showByOne")
    @ResponseBody
    public Map<String,Object> showByOne(int page, int rows,String id){
        Page<Deal> deals = dealService.queryByOne(page, rows,id);
        Map<String,Object> maps = new HashMap<String, Object>();
        maps.put("rows",deals);
        maps.put("total",deals.getTotal());
        return maps;
    }

    @RequestMapping("/showByTwo")
    @ResponseBody
    public Map<String,Object> showByTwo(int page, int rows,String id){
        Page<Deal> deals = dealService.queryByTwo(page, rows,id);
        Map<String,Object> maps = new HashMap<String, Object>();
        maps.put("rows",deals);
        maps.put("total",deals.getTotal());
        return maps;
    }

}
