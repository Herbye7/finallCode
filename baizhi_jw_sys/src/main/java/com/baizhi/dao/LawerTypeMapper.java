package com.baizhi.dao;

import com.baizhi.entity.LawerType;

public interface LawerTypeMapper {
    int deleteByPrimaryKey(String id);

    int insert(LawerType record);

    int insertSelective(LawerType record);

    LawerType selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LawerType record);

    int updateByPrimaryKey(LawerType record);
}