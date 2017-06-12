package com.baizhi.entity;

import java.math.BigDecimal;

public class Lawer {
    private String id;

    private String name;

    private String address;

    private String year;

    private String number;

    private String workspace;

    private String desc;

    private BigDecimal wordprice;

    private BigDecimal phoneprice;

    private String photo;

    private String status;

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getWorkspace() {
        return workspace;
    }

    public void setWorkspace(String workspace) {
        this.workspace = workspace;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public BigDecimal getWordprice() {
        return wordprice;
    }

    public void setWordprice(BigDecimal wordprice) {
        this.wordprice = wordprice;
    }

    public BigDecimal getPhoneprice() {
        return phoneprice;
    }

    public void setPhoneprice(BigDecimal phoneprice) {
        this.phoneprice = phoneprice;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}