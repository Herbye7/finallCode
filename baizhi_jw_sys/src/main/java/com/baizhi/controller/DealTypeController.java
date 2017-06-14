package com.baizhi.controller;

import com.baizhi.entity.DealType;
import com.baizhi.service.DealTypeService;
import com.sun.xml.internal.bind.v2.model.core.ID;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/6/14.
 */
@Controller
@RequestMapping("/dealtype")
public class DealTypeController {

    @Resource
    private DealTypeService dealTypeService;

    @RequestMapping("/showAll")
    @ResponseBody
    public List<DealType> showAll(){

        return dealTypeService.queryAll();

    }

    @RequestMapping("/showAllChild")
    @ResponseBody
    public List<DealType> showAllChild(String id){
        return dealTypeService.queryAllChild(id);
    }


}
