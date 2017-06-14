package com.baizhi.dao;

import com.baizhi.entity.Deal;

import java.util.List;

public interface DealMapper {
    int deleteByPrimaryKey(String id);

    int insert(Deal record);

    int insertSelective(Deal record);

    List<Deal> selectAll();

    Deal selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Deal record);

    int updateByPrimaryKey(Deal record);

    List<Deal> selectByOneType(String id);
    List<Deal> selectByTwoType(String id);


}