/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author ruoran
 */
public class Order {
    private Integer oid;
	private Double total;
	private Date ordertime;
	private Integer state;// 1:未付款   2:订单已经付款   3:已经发货   4:订单结束
	private String name;
	private String phone;
	private String addr;
	// foreign key
	private User user;
	// set of orders
	private Set<OrderItem> orderItems = new HashSet<OrderItem>();
}
