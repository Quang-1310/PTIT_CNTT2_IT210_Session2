package org.example.ptit_cntt2_it210_session2.Gioi3.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;
import org.example.ptit_cntt2_it210_session2.Gioi3.model.Order;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class OrderController {

    @Autowired
    private ServletContext servletContext;

    @GetMapping("/orders")
    public String showOrders(HttpSession session, Model model) {
        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        List<Order> orders = new ArrayList<>();
        orders.add(new Order("ORD001", "Laptop Dell", 25000000.0, new Date()));
        orders.add(new Order("ORD002", "Chuột Logitech", 550000.0, new Date()));
        orders.add(new Order("ORD003", "Bàn phím cơ", 1200000.0, new Date()));

        model.addAttribute("orderList", orders);

        synchronized (servletContext) {
            Integer count = (Integer) servletContext.getAttribute("totalViewCount");
            if (count == null) count = 0;
            servletContext.setAttribute("totalViewCount", count + 1);
        }

        return "orders";
    }
}
