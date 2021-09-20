
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="icon" href="../img/icon.png" type="image/x-icon">
    <link rel="stylesheet" href="admin.css">
</head>
<?php
// Create connection
$conn = mysqli_connect('localhost', 'root', '', 'quanlydathang');
mysqli_set_charset($conn, 'UTF8');

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>
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
                       <span>Quản lý Nhân Viên</span> 
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
                        <div class="list_product">
                                <h3>Danh Sách Đơn Hàng</h3>

                                    
                                <table class="table_donhang"> 
                                    <tr>
                                        <th>Họ Tên Khách Hàng</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Hình Ảnh</th>
                                        <th>Số Lượng Đặt</th>
                                        
                                        <th>Ngày Đặt Hàng</th>
                                        <th>Địa Chỉ</th>
                                        <th>Trạng Thái</th>
                                        <th>Duyệt</th>
                                        <th>Hủy</th>
                                    </tr>
                                    <?php

                                        $sql="SELECT TrangThai,chitietdathang.mshh,chitietdathang.sodondh,hotenkh,tenhh,soluong,giadathang,giamgia,ngaydh,diachi,hinhanh FROM chitietdathang JOIN dathang on chitietdathang.SoDonDH=dathang.SoDonDH
                                        join hanghoa on chitietdathang.MSHH=hanghoa.MSHH
                                        JOIN khachhang on dathang.MSKH=khachhang.MSKH
                                        join diachikh on khachhang.MSKH=diachikh.MSKH
                                        where trangthai=0 or trangthai=-1
                                        ";
                                        $result=mysqli_query($conn, $sql);
                                        if(mysqli_num_rows($result) >0){
                                            while ($product=mysqli_fetch_assoc($result)){
                                                if($product['TrangThai']==0)
                                                $trangthai='Chưa Xác Nhận';
                                                else if($product['TrangThai']==-1)
                                                $trangthai='Đã Hủy Đơn';
                                                else $trangthai='Đã Xác Nhận';
                                                $gia=number_format($product["giadathang"]-$product['giamgia'],0,',','.');
                                                echo("
                                                    <tr>
                                                        <td><span>".$product['hotenkh']."</span></td>
                                                        <td><span>".$product['tenhh']."</span></td>
    
                                                        <td><img src='../img/".$product['hinhanh']."' ></td>
                                                        <td><span>".$product['soluong']."</span></td>
                                                       
                                                        <td><span>".$product['ngaydh']."</span></td>
                                                        <td><span>".$product['diachi']."</span></td>
                                                        <td><span class='trangthai'>".$trangthai."</span></td>
                                                        
                                                        <td><a href='update_hanghoa.php?sohd=".$product['sodondh']."&mshh=".$product['mshh']."&soluong=".$product['soluong']."&action=duyet'>Duyệt</a></td>
                                                        <td><a href='update_hanghoa.php?sohd=".$product['sodondh']."&mshh=".$product['mshh']."&soluong=".$product['soluong']."&action=huy'>Hủy</a></td>
                                                    </tr>
                                                ");
                                            }
                                        }
                                      
                                    ?>
                                       
                                    </table>
                        </div>
                </div>
           

    </div>
</body>
</html>