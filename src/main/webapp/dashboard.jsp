<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Home Gas Delivery System</title>
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
        .dashboard-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
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
            background-color: #f2f2f2; /* Alternate background color for even rows */
        }
        .order-item h3 {
            margin-top: 0;
            margin-bottom: 5px;
        }
        .order-item p {
            margin: 5px 0;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="dashboard-header">
            <h1>User Dashboard</h1>
            <p>Welcome, <%= session.getAttribute("username") %>!</p>
        </div>
        <div class="dashboard-content">
            <div class="section">
                <div class="section-header">Order Management</div>
                <div class="section-content">
                    <p>Place new orders for gas cylinders:</p>
                    <a href="createOrder.jsp" class="button">Place New Order</a>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Delivery Tracking</div>
                <div class="section-content">
                    <p>Track your current order status:</p>
                    <ul class="order-list">
                        <!-- Sample order item -->
                        <li class="order-item">
                            <h3>Order #123</h3>
                            <p>Status: Out for Delivery</p>
                            <p>Date: June 29, 2024</p>
                        </li>
                        <!-- Additional order items should be dynamically generated here -->
                    </ul>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Profile Management</div>
                <div class="section-content">
                    <p>Update your profile information:</p>
                    <a href="updateProfile.jsp" class="button">Update Profile</a>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Payment Management</div>
                <div class="section-content">
                    <p>Manage your payment methods:</p>
                    <a href="managePayments.jsp" class="button">Manage Payments</a>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Notifications</div>
                <div class="section-content">
                    <p>View notifications:</p>
                    <p>No new notifications at the moment.</p>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Customer Support</div>
                <div class="section-content">
                    <p>Contact customer support:</p>
                    <a href="contactSupport.jsp" class="button">Contact Support</a>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Feedback and Reviews</div>
                <div class="section-content">
                    <p>Leave feedback and reviews:</p>
                    <a href="leaveFeedback.jsp" class="button">Leave Feedback</a>
                </div>
            </div>
            <div class="section">
                <div class="section-header">AI-Powered Recommendations</div>
                <div class="section-content">
                    <p>Get personalized recommendations:</p>
                    <p>AI recommendations based on your preferences coming soon!</p>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Security and Privacy</div>
                <div class="section-content">
                    <p>Manage security settings:</p>
                    <a href="securitySettings.jsp" class="button">Security Settings</a>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Promotions and Discounts</div>
                <div class="section-content">
                    <p>View promotions and discounts:</p>
                    <p>Check back for latest offers and discounts!</p>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Logout Option</div>
                <div class="section-content">
                    <p>Securely log out of your account:</p>
                    <a href="logout.jsp" class="button">Logout</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

