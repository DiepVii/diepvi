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
                        <h3>Nhập Thông Tin Sản Phẩm </h3>   
                            <form action="index.php" enctype='multipart/form-data' method='post' >
                                <input type='text' required name='mshh' class='login'  placeholder='Mã Số Sản Phẩm'>
                                <br>
                                <input type='text' required name='tenhh' class='login'  placeholder='Tên Sản Phẩm'>
                                <br>
                                <input type='text' required name='quycach' class='login'  placeholder='Mô Tả Sản Phẩm'>
                                <br>
                                <input type='number' required min="0"  name='gia' class='login'  placeholder='Giá'>
                                <br>
                                <input type='number' required min="1" name='soluonghang' class='login'  placeholder='Số Lượng Hàng'>
                                <br>
                                <p>Loại Hàng Hóa: </p>
                               
                                <select name="loaihang" class="login">
                               <?php
                                        $sql="select maloaihang,tenloaihang from loaihanghoa";
                                        $result=mysqli_query($conn, $sql);
                                        if(mysqli_num_rows($result) >0){
                                            while ($product=mysqli_fetch_assoc($result)){
                                                echo("
                                                <option value='".$product['maloaihang']."'>".$product['tenloaihang']."</option>
                                                ");
                                            }
                                        }
                                  
                                ?>
                                 </select>
                                
                                <br>
                                <p>Hình ảnh: </p>
                                <input type="file" required name="hinhanh" class="login" placeholder="Hình Ảnh">
                                <input type='submit' value='Thêm Hàng Hóa' name='submit' id='submit'>
                            </form>
                    
              
                    </div>
                </div>

    </div>
</body>
</html>