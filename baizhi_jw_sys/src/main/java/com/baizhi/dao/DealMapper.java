package com.baizhi.dao;

import com.baizhi.entity.Deal;

public interface DealMapper {
    int deleteByPrimaryKey(String id);

    int insert(Deal record);

    int insertSelective(Deal record);

    Deal selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Deal record);

    int updateByPrimaryKey(Deal record);
}