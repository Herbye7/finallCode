package com.baizhi.service;

import com.baizhi.dao.AdminMapper;
import com.baizhi.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by lenovo on 2017/6/12.
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    public Admin login(Admin admin) {

        Admin adminDB = adminMapper.selectByName(admin.getAdminname());
        if(adminDB==null) throw new RuntimeException("帐号错误！");
        if(adminDB.getPassword().equals(admin.getPassword())) return adminDB;
        throw new RuntimeException("密码错误");
    }
}
