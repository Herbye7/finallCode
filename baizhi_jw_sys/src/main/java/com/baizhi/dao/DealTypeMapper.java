package com.baizhi.dao;

import com.baizhi.entity.DealType;

import java.util.List;

public interface DealTypeMapper {
    int deleteByPrimaryKey(String id);

    List<DealType> selectAllParent();
    List<DealType> selectAllChild(String id);

    int insert(DealType record);

    int insertSelective(DealType record);

    DealType selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(DealType record);

    int updateByPrimaryKey(DealType record);
}