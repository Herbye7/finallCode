package com.baizhi.VO;

import java.io.Serializable;

/**
 * Created by lenovo on 2017/6/13.
 */
public class LawerTypeVO implements Serializable{

    private String id;
    private String type;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LawerTypeVO() {

    }

    public LawerTypeVO(String id, String type, String name) {

        this.id = id;
        this.type = type;
        this.name = name;
    }
}
