package org.example.ptit_cntt2_it210_session2.Gioi3.model;

import java.util.Date;

public class Order {
    private String orderId;
    private String productName;
    private Double price;
    private Date date;

    public Order(String orderId, String productName, Double price, Date date) {
        this.orderId = orderId;
        this.productName = productName;
        this.price = price;
        this.date = date;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getProductName() {
        return productName;
    }

    public Double getPrice() {
        return price;
    }

    public Date getDate() {
        return date;
    }
}
