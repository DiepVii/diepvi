
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
if(isset($_POST['submit'])){
    $mshh=$_POST['mshh'];
    $tenhh=$_POST['tenhh'];
    $quycach=$_POST['quycach'];
    $gia=$_POST['gia'];
    $soluonghang=$_POST['soluonghang'];
    $loaihang=$_POST['loaihang'];
    $temp=$_FILES['hinhanh'];
    $hinhanh=$temp['name'];
    $sql="select * from hanghoa where mshh='$mshh'";
    $old=mysqli_query($conn,$sql);
    if(mysqli_num_rows($old)>0){
        header("location: add_product.php");
        return;
    }
    $sql="insert into hanghoa values('$mshh','$tenhh','$quycach',$gia,$soluonghang,'$loaihang','Không Có','$hinhanh')";
    mysqli_query($conn,$sql);   

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
                                <h3>Thống Kê Sản Phẩm Đã Bán</h3>

                                  
                                <table class="table_hanghoa">
                                    <tr>
                                        <th>Họ Tên Khách Hàng</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Hình Ảnh</th>
                                        <th>Số Lượng Bán</th>
                                        <th>Ngày Đặt Hàng</th>
                                        <th>Tổng Tiền</th>
                                       
                                    </tr>
                                    <?php
                                           
                                            $sql="SELECT chitietdathang.mshh,chitietdathang.sodondh,hotenkh,tenhh,soluong,giadathang,giamgia,ngaydh,diachi,hinhanh FROM chitietdathang JOIN dathang on chitietdathang.SoDonDH=dathang.SoDonDH
                                            join hanghoa on chitietdathang.MSHH=hanghoa.MSHH
                                            JOIN khachhang on dathang.MSKH=khachhang.MSKH
                                            join diachikh on khachhang.MSKH=diachikh.MSKH
                                            WHERE TrangThai=2";
                    
                                            $result=mysqli_query($conn, $sql);
                                            if(mysqli_num_rows($result) >0){
                                                while ($product=mysqli_fetch_assoc($result)){
                                                    $gia=number_format($product["giadathang"]-$product['giamgia'],0,',','.');
                                                    echo("
                                                        <tr>
                                                            <td><span>".$product['hotenkh']."</span></td>
                                                            <td><span>".$product['tenhh']."</span></td>

                                                            <td><img src='../img/".$product['hinhanh']."' ></td>
                                                            <td><span>".$product['soluong']."</span></td>
                                                            <td><span>".$product['ngaydh']."</span></td>
                                                            <td><span>".$gia." đ</span></td>
                                                            
                                                            
                                                        </tr>
                                                    ");
                                                }
                                            }

                                            
                                      
                                    ?>
                                            
                                    </table>
                                    <?php
                                             $sql="select sum(giadathang-giamgia) as tongtien from chitietdathang where trangthai=2";
                                             $result=mysqli_query($conn,$sql);
                                             $product=mysqli_fetch_assoc($result);
                                             $temp=$product['tongtien'];
                                             $tongtien=number_format($temp,0,',','.');
                                                echo("
                                                <p class='sum_money' colspan='6'><b>Tổng Thu Nhập: ".$tongtien." đ</b>
                                                    
                                                </p>
                                                ");
                                               
                                   ?>
                        </div>
                </div>
           

    </div>
</body>
</html>