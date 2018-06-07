package com.sfu.cmpt470.properties;

public class Query {
    public static String getAllOrder(){
        return "SELECT order_id, restaurant_id, time FROM order_order";
    }

    public static String findOrderDetails() {
        return "SELECT order_details_id, order_id, dish_id, dish_name, status FROM order_details WHERE order_id = ?";
    }

    public static String insertOrder(){
        return "INSERT INTO order_order (time,restaurant_id) VALUES(?,?)";
    }

    public static String insertOrderDetail() {
        //order id, status, dish_id
        return "INSERT INTO order_details (order_id, dish_id, dish_name, status) SELECT ?,dish_id,dish_name,? FROM dish where dish_id = ?;";
    }
}
