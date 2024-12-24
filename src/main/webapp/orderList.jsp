<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order List - Home Gas Delivery System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .dashboard-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .section {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .section-header {
            font-size: 1.2rem;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .section-content {
            margin-top: 10px;
        }
        .order-list {
            list-style-type: none;
            padding: 0;
        }
        .order-item {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }
        .order-item:nth-child(even) {
            background-color: #e9ecef; /* Alternate background color for even rows */
        }
        .order-item h3 {
            margin-top: 0;
            margin-bottom: 5px;
        }
        .order-item p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="dashboard-header">
            <h1>Order List</h1>
        </div>
        <div class="dashboard-content">
            <div class="section">
                <div class="section-header">Your Orders</div>
                <div class="section-content">
                    <ul class="order-list">
                        <li class="order-item">
                            <h3>Order #1</h3>
                            <p>Status: Delivered</p>
                            <p>Date: June 28, 2024</p>
                        </li>
                        <li class="order-item">
                            <h3>Order #2</h3>
                            <p>Status: Processing</p>
                            <p>Date: June 29, 2024</p>
                        </li>
                        <!-- Add more orders dynamically -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
    
    