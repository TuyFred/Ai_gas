package order;

import java.sql.Timestamp;

public class Order {
    private int id;
    private int userId;
    private int quantity;
    private Timestamp orderDate;
    private String status;

    public Order(int id, int userId, int quantity, Timestamp orderDate, String status) {
        this.id = id;
        this.userId = userId;
        this.quantity = quantity;
        this.orderDate = orderDate;
        this.status = status;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
