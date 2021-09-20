
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
if(isset($_POST['submit_sua'])){
    $mshh=$_POST['mshh'];
    $tenhh=$_POST['tenhh'];
    $quycach=$_POST['quycach'];
    $gia=$_POST['gia'];
    $soluonghang=$_POST['soluonghang'];
    $loaihang=$_POST['loaihang'];
    $temp=$_FILES['hinhanh'];
    $hinhanh=$temp['name'];
    $sql="update hanghoa set tenhh='$tenhh',quycach='$quycach',gia=$gia,soluonghang=$soluonghang,maloaihang='$loaihang',hinhanh='$hinhanh' where mshh='$mshh'";
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
                                <h3>Danh Sách Sản Phẩm</h3>

                                    <a class="them" href="add_product.php">Thêm Sản Phẩm</a>
                                <table class="table_hanghoa">
                                    <tr>
                                        <th>Ảnh</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Số Lượng Hàng</th>
                                        <th>Giá</th>
                                        <th>Loại Hàng Hóa</th>
                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                    <?php

                                        $sql="select tenloaihang,mshh,tenhh,hinhanh,gia,quycach,soluonghang from hanghoa join loaihanghoa on hanghoa.maloaihang=loaihanghoa.maloaihang";
                                        $result=mysqli_query($conn, $sql);
                                        if(mysqli_num_rows($result) >0){
                                            while ($product=mysqli_fetch_assoc($result)){
                                                $gia=number_format($product["gia"],0,',','.');
                                                echo("
                                                    <tr>
                                                        <td><img src='../img/".$product['hinhanh']."' ></td>
                                                        <td><span>".$product['tenhh']."</span></td>
                                                        <td><span>".$product['soluonghang']."</span></td>
                                                        <td><span>".$gia." đ</span></td>
                                                        <td><span>".$product['tenloaihang']."</span></td>
                                                        <td><a href='sua_product.php?mshh=".$product['mshh']."'>Sửa</a></td>
                                                        <td><a href='update_hanghoa.php?mshh=".$product['mshh']."&action=xoahh'>Xóa</a></td>
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