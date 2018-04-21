/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author ruoran
 */
public class Category implements Serializable {

    private Integer cid;
    private String cname;
    // 一级分类中存放二级分类的集合:
    private Set<CategorySecond> categorySeconds = new HashSet<CategorySecond>();
}
