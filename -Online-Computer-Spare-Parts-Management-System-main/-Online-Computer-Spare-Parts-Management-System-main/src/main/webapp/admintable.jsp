<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
       <link rel="stylesheet" href="csss/header.css">
         <link rel="stylesheet" href="csss/footer.css">
          <link rel="stylesheet" href="csss/admintable.css">
    <title>Quotation List</title>
   
</head>
<body>
 <header>
        <div class="news-ticker">
            <h1>Welcome to CYBER MART</h1>
        </div>
    </header>

    <!-- Menu Bar -->
    <div class="navbar">
        <!-- Left Section -->
        <div class="navbar-left">
            <img src="im/cc.png" alt="Logo" class="logo">
            <a href="home1.jsp">Home</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Contact</a>
        </div>
        
        <!-- Right Section -->
        <div class="navbar-right">
            <a href="#">Returns/Refunds</a>
            <a href="#">Feedback</a>
            <a href="#">Build PC</a>
            <img src="im/user.png" alt="Profile Icon" class="menu-icon">
        </div>
    </div>
    <div class="container">
        <h2 class="mt-4">Quotation List</h2>
        
        <div class="header-buttons">
            <a href="register.jsp" class="btn btn-primary">Add New Quotation</a>
            <form action="readtable" method="post" style="display: inline;">
                <button class="btn btn-secondary" type="submit">View Quotation List</button>
            </form>
        </div>
         
        <div class="row">
            <c:forEach var="cus" items="${customer}">
                <div class="col-md-4">
                    <div class="card customer-card">
                        <div class="card-body">
                            <a class="card-title">${cus.email}</a>
                            <p class="card-text">
                                <strong>CPU:</strong> ${cus.cpu}<br>
                                <strong>Video Card:</strong> ${cus.vcard}<br>
                                <strong>Memory:</strong> ${cus.mem}<br>
                                <strong>Motherboard:</strong> ${cus.mboard}<br>
                                <strong>CPU Cooler:</strong> ${cus.cool}<br>
                                <strong>Storage:</strong> ${cus.ssd}
                            </p>
                            <div class="d-flex">
                                <!-- Update Button -->
                                <a href="update.jsp?email=${cus.email}&cpu=${cus.cpu}&vcard=${cus.vcard}&mem=${cus.mem}&mboard=${cus.mboard}&cool=${cus.cool}&ssd=${cus.ssd}" class="btn btn-primary">
                                    Update
                                </a>
                                <!-- Delete Button -->
                                <form action="deletedata" method="post" style="display: inline;">
                                    <input type="hidden" name="email" value="${cus.email}">
                                    <button class="btn btn-danger" type="submit">Delete</button>
                                </form>
                                <!-- Checkout Button -->
                                <a href="checkout.jsp?email=${cus.email}" class="btn btn-success">Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <footer>
        <div class="footer-links">
            <a href="#">Terms of Service</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Shipping Policy</a>
        </div>

        <div class="social-media">
            <h4>Follow Us:</h4>
            <a href="#" aria-label="Facebook">Facebook</a>
            <a href="#" aria-label="Instagram">Instagram</a>
        </div>

        <div class="footer-email">
            <input type="email" placeholder="Enter your email" required>
            <button type="submit">Subscribe</button>
        </div>

        <p>&copy; 2024 Your Store. All rights reserved.</p>

        <!-- Add your image here -->
        <img src="im/cc.png" alt="Footer Image" class="footer-image"> <!-- Replace with your image URL -->
    </footer>
</body>
</html>
