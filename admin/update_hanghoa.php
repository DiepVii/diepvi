<?php
// Create connection
$conn = mysqli_connect('localhost', 'root', '', 'quanlydathang');
mysqli_set_charset($conn, 'UTF8');

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$action=$_GET['action'];
if($action=='xoahh'){
    $mshh=$_GET['mshh'];
    $sql="delete from chitietdathang where mshh='$mshh'";
    mysqli_query($conn,$sql);
    $sql="delete from hanghoa where mshh='$mshh'";
    mysqli_query($conn,$sql);
    header("location: index.php");
    return;
}
if($action=='xoanv'){
    $msnv=$_GET['msnv'];
    $sql="delete from nhanvien where msnv='$msnv'";
    mysqli_query($conn,$sql);
    header("location: nhanvien.php");
    return;
}
if($action=='duyet'){
    $sohd=$_GET['sohd'];
    $mshh=$_GET['mshh'];
    $sql="select soluonghang from hanghoa where mshh='$mshh'";
    $result=mysqli_query($conn, $sql);
    $product=mysqli_fetch_assoc($result);
    $soluonghang =$product['soluonghang'];
    $soluongdat=$_GET['soluong'];
    if($soluonghang>=$soluongdat){
        $sql="update hanghoa set soluonghang=soluonghang-$soluongdat where mshh='$mshh'";
        mysqli_query($conn,$sql);
        $sql1="update chitietdathang set trangthai=2 where sodondh='$sohd'";
        mysqli_query($conn,$sql1);
        header("location: donhang.php");
        return;
    }
    else{
        header("location: donhang.php");
        return;     
    }
   
}
if($action=='huy'){
    $sohd=$_GET['sohd'];
    $sql="update chitietdathang set trangthai=-1 where sodondh='$sohd'";
    mysqli_query($conn,$sql);
    header("location: donhang.php");
    return;
}

?>