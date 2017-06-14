package com.baizhi.entity;

import java.io.Serializable;
import java.util.List;

public class LawerType implements Serializable {
    private String id;

    private String name;

    //维护关系属性：查看该标签下的所有律师
    private List<Lawer> lawers;

    public List<Lawer> getLawers() {
        return lawers;
    }

    public void setLawers(List<Lawer> lawers) {
        this.lawers = lawers;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "LawerType{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}