package com.baizhi.dao;

import com.baizhi.entity.Lawer;

public interface LawerMapper {
    int deleteByPrimaryKey(String id);

    int insert(Lawer record);

    int insertSelective(Lawer record);

    Lawer selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Lawer record);

    int updateByPrimaryKey(Lawer record);
}