package com.baizhi.service;

import com.baizhi.entity.Lawer;
import com.github.pagehelper.Page;

import java.util.List;

/**
 * Created by lenovo on 2017/6/12.
 */
public interface LawerService {

    //queryAll
    Page<Lawer> queryAll(int pageNum,int pageSize);
    //queryOne
    Lawer queryOne(String id);
    //add
    void add(Lawer lawer);
    //delete
    void delete(String id);
    //update
    void update(Lawer lawer);


}
