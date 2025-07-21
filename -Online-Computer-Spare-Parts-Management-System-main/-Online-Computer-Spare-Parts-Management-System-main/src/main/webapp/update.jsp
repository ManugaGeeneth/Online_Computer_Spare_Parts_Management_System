<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="csss/heaer.css">
      <link rel="stylesheet" href="csss/update.css">
    <style>
        /* Centering the form on the page */
       

    </style>
</head>
<body>

    <div class="form-container">
        <h1>UPDATE PC CONFIGURATION</h1>
        <form method="post" action="updatecustomer">
            <div class="selection-grid">

                <!-- CPU Selection -->
                <div class="card-box">
                    <a href="#" id="cpu_image_link">
                        <img src="im/cpu.jpg" alt="Select CPU Image">
                    </a>
                    <select class="form-select" id="cpu" name="cpu" aria-label="CPU Selection" required>
                        <option selected disabled>Select CPU</option>
                        <option value="intel_i5" <%= "intel_i5".equals(request.getParameter("cpu")) ? "selected" : "" %>>Intel Core i5</option>
                        <option value="intel_i7" <%= "intel_i7".equals(request.getParameter("cpu")) ? "selected" : "" %>>Intel Core i7</option>
                        <option value="amd_ryzen5" <%= "amd_ryzen5".equals(request.getParameter("cpu")) ? "selected" : "" %>>AMD Ryzen 5</option>
                        <option value="amd_ryzen7" <%= "amd_ryzen7".equals(request.getParameter("cpu")) ? "selected" : "" %>>AMD Ryzen 7</option>
                    </select>
                </div>

                <!-- Video Card Selection -->
                <div class="card-box">
                    <a href="#" id="vcard_image_link">
                        <img src="im/gpu.jpg" alt="Select Video Card Image">
                    </a>
                    <select class="form-select" id="vcard" name="vcard" aria-label="Video Card Selection" required>
                        <option selected disabled>Select Video Card</option>
                        <option value="nvidia_gtx1660" <%= "nvidia_gtx1660".equals(request.getParameter("vcard")) ? "selected" : "" %>>NVIDIA GTX 1660</option>
                        <option value="nvidia_rtx3080" <%= "nvidia_rtx3080".equals(request.getParameter("vcard")) ? "selected" : "" %>>NVIDIA RTX 3080</option>
                        <option value="amd_rx5700" <%= "amd_rx5700".equals(request.getParameter("vcard")) ? "selected" : "" %>>AMD RX 5700</option>
                        <option value="amd_rx6800" <%= "amd_rx6800".equals(request.getParameter("vcard")) ? "selected" : "" %>>AMD RX 6800</option>
                    </select>
                </div>

                <!-- Memory Selection -->
                <div class="card-box">
                    <a href="#" id="mem_image_link">
                        <img src="im/ram.jpg" alt="Select Memory Image">
                    </a>
                    <select class="form-select" id="mem" name="mem" aria-label="Memory Selection" required>
                        <option selected disabled>Select Memory</option>
                        <option value="8gb" <%= "8gb".equals(request.getParameter("mem")) ? "selected" : "" %>>8 GB</option>
                        <option value="16gb" <%= "16gb".equals(request.getParameter("mem")) ? "selected" : "" %>>16 GB</option>
                        <option value="32gb" <%= "32gb".equals(request.getParameter("mem")) ? "selected" : "" %>>32 GB</option>
                        <option value="64gb" <%= "64gb".equals(request.getParameter("mem")) ? "selected" : "" %>>64 GB</option>
                    </select>
                </div>

                <!-- Motherboard Selection -->
                <div class="card-box">
                    <a href="#" id="mboard_image_link">
                        <img src="im/board.jpg" alt="Select Motherboard Image">
                    </a>
                    <select class="form-select" id="mboard" name="mboard" aria-label="Motherboard Selection" required>
                        <option selected disabled>Select Motherboard</option>
                        <option value="asus_rx570" <%= "asus_rx570".equals(request.getParameter("mboard")) ? "selected" : "" %>>ASUS RX570</option>
                        <option value="msi_z490" <%= "msi_z490".equals(request.getParameter("mboard")) ? "selected" : "" %>>MSI Z490</option>
                        <option value="gigabyte_b550" <%= "gigabyte_b550".equals(request.getParameter("mboard")) ? "selected" : "" %>>Gigabyte B550</option>
                        <option value="asus_x570" <%= "asus_x570".equals(request.getParameter("mboard")) ? "selected" : "" %>>ASUS X570</option>
                    </select>
                </div>

                <!-- CPU Cooler Selection -->
                <div class="card-box">
                    <a href="#" id="cool_image_link">
                        <img src="im/cool.jpg" alt="Select CPU Cooler Image">
                    </a>
                    <select class="form-select" id="cool" name="cool" aria-label="CPU Cooler Selection" required>
                        <option selected disabled>Select CPU Cooler</option>
                        <option value="stock" <%= "stock".equals(request.getParameter("cool")) ? "selected" : "" %>>Stock Cooler</option>
                        <option value="cooler_master" <%= "cooler_master".equals(request.getParameter("cool")) ? "selected" : "" %>>Cooler Master Hyper 212</option>
                        <option value="noctua" <%= "noctua".equals(request.getParameter("cool")) ? "selected" : "" %>>Noctua NH-D15</option>
                        <option value="bequiet" <%= "bequiet".equals(request.getParameter("cool")) ? "selected" : "" %>>be quiet! Dark Rock Pro</option>
                    </select>
                </div>

                <!-- Storage Selection -->
                <div class="card-box">
                    <a href="#" id="ssd_image_link">
                        <img src="im/ssd.jpg" alt="Select Storage Image">
                    </a>
                    <select class="form-select" id="ssd" name="ssd" aria-label="Storage Selection" required>
                        <option selected disabled>Select Storage</option>
                        <option value="256gb_ssd" <%= "256gb_ssd".equals(request.getParameter("ssd")) ? "selected" : "" %>>256 GB SSD</option>
                        <option value="512gb_ssd" <%= "512gb_ssd".equals(request.getParameter("ssd")) ? "selected" : "" %>>512 GB SSD</option>
                        <option value="1tb_ssd" <%= "1tb_ssd".equals(request.getParameter("ssd")) ? "selected" : "" %>>1 TB SSD</option>
                        <option value="2tb_ssd" <%= "2tb_ssd".equals(request.getParameter("ssd")) ? "selected" : "" %>>2 TB SSD</option>
                    </select>
                </div>

            </div>

            <!-- Hidden Email Field -->
            <input type="hidden" name="email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>">

            <button type="submit" class="btn btn-primary mt-4">UPDATE</button>
        </form>
    </div>

    <!-- Bootstrap JS (optional, for interactive components) -->
    <script src="JS/bootstrap.bundle.min.js"></script>
</body>
</html>
