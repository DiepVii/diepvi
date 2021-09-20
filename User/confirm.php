
<?php
// Create connection
$conn = mysqli_connect('localhost', 'root', '', 'quanlydathang');
mysqli_set_charset($conn, 'UTF8');

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
function randomString($length) {
    $result="";
    $characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456879";
    for ($i=0; $i < $length; $i++) { 
        $result = $result . $characters[rand(0, strlen($characters) - 1)];
    }
    
    return $result;
}

if(isset($_POST['submit']))
{
    $mshh=$_GET['mshh'];
    $soluong=$_GET['soluong'];
    $ten=$_POST['ten'];
    $company=$_POST['company'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $address=$_POST['address'];
    $mskh=randomString(5);
    $sodondh=randomString(5);
    //insert khachhang
    $sql="insert into khachhang values ('$mskh', '$ten','$company','$phone','$email')";
    mysqli_query($conn,$sql);
    //insert diachikh
    $sql1="insert into diachikh(DiaChi,MSKH) values ('$address','$mskh')";
    mysqli_query($conn,$sql1);
    //insert dathang
    $tempdh=date_create();
    $ngaydh=date_format($tempdh, 'd-m-Y');
    $tempgh=$tempdh;
    date_modify($tempgh, '+3 day');
    $ngaygh=date_format($tempgh, 'd-m-Y');
    $sql="select msnv  from nhanvien";  
    $result=mysqli_query($conn, $sql);
    $product=mysqli_fetch_assoc($result);
    $msnv=$product['msnv'];
    $sql="insert into dathang values ('$sodondh','$mskh','$msnv','$ngaydh','$ngaygh')";
    mysqli_query($conn,$sql);
    //insert chitietdathang  
    $sql="select tenhh,gia,soluonghang,hinhanh from hanghoa where mshh='$mshh'";
    $result=mysqli_query($conn, $sql);
    $product=mysqli_fetch_assoc($result);
    $gia=$product['gia'];
    $tenhh=$product['tenhh'];
    $hinhanh=$product['hinhanh'];
    $soluonghang=$product['soluonghang'];
    $trangthai=1;
    if($soluong<=$soluonghang)
    {
        $trangthai=0;
    }
    $sql="insert into chitietdathang values ('$sodondh','$mshh',$soluong,$gia*$soluong,0,$trangthai)";
    mysqli_query($conn,$sql);
    header("location: chitietdonhang.php?sodondh=".$sodondh);
    return;
}
?>
