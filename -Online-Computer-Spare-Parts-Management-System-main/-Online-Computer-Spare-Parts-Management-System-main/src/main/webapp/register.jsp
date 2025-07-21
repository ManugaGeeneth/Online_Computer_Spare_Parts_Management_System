<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hardware Selection Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="csss/a.css">
     <link rel="stylesheet" href="csss/header.css">
      <link rel="stylesheet" href="csss/footer.css">
         <link rel="stylesheet" href="csss/reg.css">
</head>
<body>
 
    <!-- Menu Bar -->
    <div class="navbar">
        <!-- Left Section -->
        <div class="navbar-left">
            <img src="im/cc.png" alt="Logo" class="logo">
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Contact</a>
        </div>
        
        <!-- Right Section -->
        <div class="navbar-right">
            <a href="#">Returns/Refunds</a>
            <a href="#">Feedback</a>
            <a href="admintable.jsp">View Quotation</a>
            <img src="im/user.png" alt="Profile Icon" class="menu-icon">
        </div>
    </div>
<canvas id="smokeCanvas"></canvas>
    <div class="form-container">
        <h2>BUILD PC</h2>
        <form  id="hardwareForm" method="post" action="addcustomer">
            <div class="selection-grid">
                <!-- First item: CPU -->
                <div class="card-box">
                    <a href="#" id="cpu_image_link">
                        <img src="im/cpu.jpg" alt="Select CPU Image">
                    </a>
                    <select class="form-select" id="cpu" name="cpu" aria-label="CPU Selection">
                        <option selected disabled>Select CPU</option>
                        <option value="intel_i5">Intel Core i5                  150'000LKR</option>
                        <option value="intel_i7">Intel Core i7                  190'000LKR</option>
                        <option value="amd_ryzen5">AMD Ryzen 5                  130'000LKR</option>
                        <option value="amd_ryzen7">AMD Ryzen 7                  200'000LKR</option>
                    </select>
                </div>

                <!-- Second item: Video Card -->
                <div class="card-box">
                    <a href="#" id="vcard_image_link">
                        <img src="im/gpu.jpg" alt="Select Video Card Image">
                    </a>
                    <select class="form-select" id="vcard" name="vcard" aria-label="Video Card Selection">
                        <option selected disabled>Select Video Card</option>
                        <option value="nvidia_gtx1660">NVIDIA GTX 1660              290'000LKR</option>
                        <option value="nvidia_rtx3080">NVIDIA RTX 3080              190'000LKR        </option>
                        <option value="amd_rx5700">AMD RX 5700                      230'000LKR</option>
                        <option value="amd_rx6800">AMD RX 6800                      420'000LKR</option>
                    </select>
                </div>

                <!-- Third item: Memory -->
                <div class="card-box">
                    <a href="#" id="mem_image_link">
                        <img src="im/ram.jpg" alt="Select Memory Image">
                    </a>
                    <select class="form-select" id="mem" name="mem" aria-label="Memory Selection">
                        <option selected disabled>Select Memory</option>
                        <option value="8gb">8 GB           10000LKR</option>
                        <option value="16gb">16 GB         25000LKR</option>
                        <option value="32gb">32 GB         30000LKR</option>
                        <option value="64gb">64 GB         55000LKR</option>
                    </select>
                </div>

                <!-- Fourth item: Motherboard -->
                <div class="card-box">
                    <a href="#" id="mboard_image_link">
                        <img src="im/board.jpg" alt="Select Motherboard Image">
                    </a>
                    <select class="form-select" id="mboard" name="mboard" aria-label="Motherboard Selection">
                        <option selected disabled>Select Motherboad</option>
                        <option value="asus_rx570">ASUS RX570                     120'000LKR</option>
                        <option value="msi_z490">MSI Z490                         200'000LKR </option>
                        <option value="gigabyte_b550">Gigabyte B550               149'000LKR </option>
                        <option value="asus_x570">ASUS X570                       200'000LKR   </option>
                    </select>
                </div>

                <!-- Fifth item: CPU Cooler -->
                <div class="card-box">
                    <a href="#" id="cool_image_link">
                        <img src="im/cool.jpg" alt="Select CPU Cooler Image">
                    </a>
                    <select class="form-select" id="cool" name="cool" aria-label="CPU Cooler Selection">
                        <option selected disabled>Select CPU Cooler</option>
                        <option value="stock">Stock Cooler                             230'000LKR</option>
                        <option value="cooler_master">Cooler Master Hyper 212          100'000LKR </option>
                        <option value="noctua">Noctua NH-D15                           79,000LKR     </option>
                        <option value="bequiet">be quiet! Dark Rock Pro                320'000LKR      </option>
                    </select>
                </div>

                <!-- Sixth item: Storage -->
                <div class="card-box">
                    <a href="#" id="ssd_image_link">
                        <img src="im/ssd.jpg" alt="Select Storage Image">
                    </a>
                    <select class="form-select" id="ssd" name="ssd" aria-label="Storage Selection">
                        <option selected disabled>Select Storage</option>
                        <option value="256gb_ssd">256 GB SSD                    8000LKR</option>
                        <option value="512gb_ssd">512 GB SSD                    16000LKR  </option>
                        <option value="1tb_ssd">1 TB SSD                        20'000LKR  </option>
                        <option value="2tb_ssd">2 TB SSD                        31'000LKR  </option>
                    </select>
                </div>
            </div>

            <!-- Email Input -->
            <div class="form-floating email-input">
                <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
                <label for="email">Email address</label>
            </div>

            <button type="submit" class="btn btn-primary mt-3">Get Quotation</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="JS/bootstrap.bundle.min.js"></script>
    <script src="csss/j.js"></script>
    <script src="csss/validation.js"></script>
    
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
