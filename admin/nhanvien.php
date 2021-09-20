
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
    $msnv=$_POST['msnv'];
    $tennv=$_POST['tennv'];
    $chucvu=$_POST['chucvu'];
    $diachi=$_POST['diachi'];
    $sodienthoai=$_POST['sodienthoai'];
    $sql="select * from nhanvien where msnv='$msnv'";
    $old=mysqli_query($conn,$sql);
    if(mysqli_num_rows($old)>0){
        header("location: add_member.php");
        return;
    }
    $sql="insert into nhanvien values('$msnv','$tennv','$chucvu','$diachi','$sodienthoai')";
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
                        <div class="list_product">
                                <h3>Danh Sách Nhân Viên</h3>

                                    <a class="them" href="add_member.php">Thêm Nhân Viên</a>
                                <table class="table_hanghoa">
                                    <tr>
                                        <th>Mã Số </th>
                                        <th>Họ Tên Nhân Viên</th>
                                        <th>Chức Vụ</th>
                                        <th>Địa Chỉ</th>
                                        <th>Số Điện Thoại</th>
                                        <th>Xóa</th>
                                    </tr>
                                    <?php

                                        $sql="select msnv,hotennv,chucvu,diachi,sodienthoai from nhanvien";
                                        $result=mysqli_query($conn, $sql);
                                        if(mysqli_num_rows($result) >0){
                                            while ($product=mysqli_fetch_assoc($result)){
                                               
                                                echo("
                                                    <tr>
                                                        <td><span>".$product['msnv']."</span></td>
                                                        <td><span>".$product['hotennv']."</span></td>
                                                        <td><span>".$product['chucvu']."</span></td>
                                                        <td><span>".$product['diachi']."</span></td>
                                                        <td><span>".$product['sodienthoai']."</span></td>
                                                        <td><a href='update_hanghoa.php?msnv=".$product['msnv']."&action=xoanv'>Xóa</a></td>
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