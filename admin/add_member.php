<?php
// Create connection
  $conn = mysqli_connect('localhost', 'root', '', 'quanlydathang');
  mysqli_set_charset($conn, 'UTF8');

  // Check connection
  if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
  }
   
 ?>
 <?php
     if(isset($_POST['submit'])){
        header("location :admin.php");
    }
 ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="icon" href="../img/icon.png" type="image/x-icon">
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <div class="header">
        <div class="name">
            <img src="../img/admin.png" alt="" > 
            <h3>Admin</h3>
        </div>
        <div class="right"></div>
    </div>
        

   
    <div class="father">
            <div class="menu">
   
                 <a href="nhanvien.php"> 
                    <div class="sidebar">
                       <span>Quản Lý Nhân Viên</span> 
                           <hr>
                   </div> 
                </a>
                <a href="index.php"> 
                    <div class="sidebar">
                       <span>Quản Lý Hàng Hóa</span> 
                           <hr>
                   </div> 
                </a>
                <a href="donhang.php"> 
                    <div class="sidebar">
                       <span>Quản Lý Đơn Hàng</span> 
                           <hr>
                   </div> 
                </a>
                <a href="taichinh.php"> 
                    <div class="sidebar">
                       <span>Quản Lý Tài Chính</span> 
                           <hr>
                   </div> 
                </a>
                  
            </div>
 
            

                <div class="inf">
                    <div class='infor'>
                        <h3>Nhập Thông Tin Nhân Viên</h3>   
                            <form action="nhanvien.php" enctype='multipart/form-data' method='post' >
                                <input type='text' required name='msnv' class='login'  placeholder='Mã Số Nhân Viên'>
                                <br>
                                <input type='text' required name='tennv' class='login'  placeholder='Họ Tên Nhân Viên'>
                                <br>
                                <input type='text' required name='chucvu' class='login'  placeholder='Chức Vụ'>
                                <br>
                                <input type='text' required name='diachi' class='login'  placeholder='Địa Chỉ'>
                                <br>
                                <input type='text' maxlength="10" required name='sodienthoai' class='login'  placeholder='Số Điện Thoại'>
                                <br>
                                
                                <input type='submit' value='Thêm Nhân Viên' name='submit' id='submit'>
                            </form>
                    
              
                    </div>
                </div>

    </div>
</body>
</html>