
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" href="style.css">
       <link rel="icon" href="../img/payment.png" type="image/x-icon">
    <title>Thanh Toán</title>

    

</head>
<body>
    <div id="id1">
        <a  href="index.php">Trang Chủ</a>
         &ensp; &emsp;  
        <a  href="Dangnhap.php">Đăng Nhập</a>
        &ensp; &emsp;  
        <a href="Dangki.php">Đăng Kí</a>
    </div>
    <div class="div1">
        <a href="index.php"><img width="180" height="100" src="../img/Logo.PNG" id="img1"></a> 
        <div class="div2">
            <form action="search.php" method="post">
                <div class="search">
                    <input class="hover" required type="text" name="search" placeholder="Tìm kiếm trên shop">
                    <button type="submit" name="submit"  id="kinh"><img src="../img/kinh.png" class="hover"></button>
                </div>
            </form>
        </div> 
        <img width="170" height="80" src="../img/logo-hoa-hong-dep_111808887.jpg" id="img2">
      

        

    </div>

       <?php       
     echo("
            <div class='infor'>
                <h3>Nhập Thông Tin </h3>
                <form action='confirm.php?soluong=".$_POST['soluong']."&mshh=".$_GET['mshh']."' method='post' >
                    <input type='text' required name='ten' class='login'  placeholder='Họ Tên Khách Hàng'>
                    <br>
                    <input type='text' required name='company' class='login'  placeholder='Tên Công Ty'>
                    <br>
                    <input type='text' required  maxlength=10 name='phone' class='login'  placeholder='Số Điện Thoại'>
                    <br>
                    <input type='email' required name='email' class='login'  placeholder='Email'>
                    <br>
                    <input type='text' required name='address' class='login'  placeholder='Địa Chỉ'>
                    <br>
                    <input type='submit' value='Đặt Hàng' name='submit' id='submit'>
                </form>
      
            </div>
            ");
        ?>
        
  


        <div class="divcuoi">
            <div class="logo">
                <a href="index.php"> <img src="../img/Logo1.PNG"></a>
                <h3>DIEP VI SHOP</h3>
                <p>Chỉ từ 199k - Mua hoa tươi không lo về giá. 
                    Giao hàng miễn phí trong ngày, khu vực nội thành Cần Thơ, TpHCM. Thu tiền mặt tận nơi, chuyển khoản hoặc thanh toán qua thẻ. Lựa chọn hoàn hảo cho những dịp đặc biệt: Sinh Nhật, Kỉ Niệm, Lãng Mạn, Ngày Phụ Nữ, Ngày Valentine, Ngày của Mẹ.
                        Ngoài ra, Shop còn nhận đặt vòng hoa, kệ hoa khai trương, chúc mừng và cho các dịp khác.
                </p>
                <div class="nhanxet">
                    <input type="text" id="input1" name="Feedback" placeholder="Email Của Tôi">
                    <div id="gui" onclick=follow()><p>Theo dõi bản tin</p></div>
                </div>
            </div>
    
            <div class="part">
                <h3>HỖ TRỢ KHÁCH HÀNG</h3>
                <ul>
                    <li>Thứ Hai - Chủ Nhật(9:00 - 18:00)</li>
                    <li>Hotline: 0123456789</li>
                    <li>Facebook: DIEP VI</li>
                    <li>Email:</li>
                    <li>Contact@DIEPVI.com</li>
                    <li>Báo lỗi bảo mật:</li>
                    <li>Security.vn</li>
                </ul>
            </div>
    
            <div class="part">
                <h3>PHƯƠNG THỨC THANH TOÁN</h3>
                <P>
                    <img src="../img/visa.svg">
                    <img src="../img/thanhtoan2.svg" alt="">
                    <img src="../img/thanhtoan3.svg" alt="">
                    <br>
                    <img src="../img/thanhtoan4.svg" alt="">
                    <img src="../img/thanhtoan5.svg" alt="">
                    <img src="../img/thanhtoan6.svg" alt="">
                </P>
                <p >
                    <h3>ĐƠN VỊ VẬN CHUYỂN</h3>
                    <p class="vanchuyen">
                        <img src="../img/vanchuyen1.jpeg"  alt="">
                        <img src="../img/vanchuyen2.jpg" alt="">
                        <br>
                        <img src="../img/vanchuyen3.png" alt="">
                        <img src="../img/vanchuyen4.png" alt="">
                        <br>
                        <img src="../img/vanchuyen5.jpg" alt="">
                        <img src="../img/vanchuyen6.jpg" alt="">
    
                    </p>
                </p>
            </div>
    
            <div class="part" id="part">
                <h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
                <p class="ketnoi">
                    <a href="https://www.facebook.com/flowerstorevietnam" target="blank"><img src="../img/ketnoi1.svg" alt=""></a>
                    <a href="https://www.youtube.com/channel/UCjnNyTiUvAFhbLauRntHmdw" target="blank"><img src="../img/ketnoi2.svg"  alt=""></a>
                   <a href="" target="blank"><img src="../img/zalo.png" alt=""></a> 
                </p>
                <p>
                    <h3>TẢI APP TRÊN ĐIỆN THOẠI</h3>
                    <P class="app">
                           <a href="https://www.apple.com/app-store/" target="blank"><img src="../img/app1.png" alt=""></a> 
                            <br> 
                            <br>
                            <a href="https://play.google.com/store" target="blank"><img src="../img/app2.png" alt=""></a>
                        
                    </P>
                </p>
            </div>
    
        </div>
    
        <div class="diepvishop">
            <hr>
            <p>
                <span id="span1">© 2021 DiepViShop. Tất cả các quyền được bảo lưu. </span>
                <span id="span2">Quốc gia & Khu vực: Việt Nam | Thái Lan | Lào | Trung Quốc</span>
            </p>
        </div>
    
        <div class="lastdiv">  
                <div class="congthuong">
                    <img src="../img/thuong1.svg" class="anh" alt="">
                    <img src="../img/thuong1.svg"  class="anh" alt="">
                    <img src="../img/thuong2.png" class="anh" width="50" height="50" alt="">
                </div>
                
                <div class="address">
                    <p>Địa Chỉ: Mạc Thiên Tích, Phường An Phú, Quận Ninh Kiều, Cần Thơ. Email hỗ trợ: cskh@hotro.DiepViShop.vn</p>
                    <p>Shop nhận đặt hàng trực tuyến và giao hàng tận nơi,  chưa hỗ trợ mua và nhận hàng trực tiếp tại văn phòng hoặc trung tâm xử lý đơn hàng</p>
                    <p>© 2021 - Bản quyền thuộc về DiepViShop</p>
                </div>
    
        </div>
</body>
</html>