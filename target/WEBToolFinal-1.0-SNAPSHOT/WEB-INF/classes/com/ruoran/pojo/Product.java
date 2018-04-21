/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.pojo;

import java.util.Date;

/**
 *
 * @author ruoran
 */
public class Product {
    private Integer pid;
	private String pname;
	private Double market_price;
	private Double shop_price;
	private String image;
	private String pdesc;
	private Integer is_hot;
	private Date pdate;
	// 二级分类的外键:使用二级分类的对象.
	private CategorySecond categorySecond;
}
