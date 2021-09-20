<?php
// Create connection
$conn = mysqli_connect('localhost', 'root', '', 'quanlydathang');
mysqli_set_charset($conn, 'UTF8');

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>
  
    <link rel="stylesheet" href="NTNT.css">
    <!-- <link rel="stylesheet" href="style.css"> -->
    <link rel="icon" href="../img/mai.png" type="image/x-icon">
    <script type="text/javascript">
        function follow (){
            alert("Cảm ơn bạn đã theo dõi Shop. Shop sẽ thông báo những tin tức về mặt hàng mới đến bạn trong");  
        }   
    </script>
   <style>

        
    
       

       
    </style>
</head>

<body>
    <div id="id1">
        <?php
            if(!isset($_COOKIE["user"])){
              echo("  <a  href=\"dangnhap.php\">Đăng Nhập</a>
                &ensp; &emsp;  
                <a href=\"Dangki.php\">Đăng Kí</a>");
            }
            else echo("<a href=\"\"> " . $_COOKIE["user"] . "</a> &ensp; &emsp; <a href=\"DangXuat.php\"> Đăng Xuất </a>");
           
        ?>
     
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

    <div class="div3">
        <div class="div5">
            <h3 style="color: rgb(214, 51, 51);">Nhóm Sản Phẩm</h3>
            <ul>
                <li class="div4"><a href="#HopHoa">Hoa</a> </li>
                <li class="div4"><a href="#Combo">Combo</a> </li>
                <li class="div4"><a href="#qualuuniem">Quà lưu niệm</a> </li>
                <li class="div4"><a href="#KeHoa">Kệ hoa</a></li>
                <li class="div4"><a href="#CayDeBan">Cây Để Bàn</a></li>
            </ul>
        </div>
        <img src="../img/poster.jpeg" id="img3">
        <img src="../img/hoalogo.jpeg" id="img4">
    </div>
    <div class="div6">
        <h3 style="color: rgb(214, 51, 51);">Bán Chạy Nhất
            <hr>
        </h3>
        <div class="banchay">

            <?php
                        $sql="select mshh,TenHH,Gia,hinhanh from hanghoa where maloaihang=\"LH1\"";
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) >0){
                            while ($row =mysqli_fetch_assoc($result)){
                                $temp=number_format($row["Gia"],0,',','.');
                               echo "<div class=\"div7\"> 
                               <a href=\"detail.php?mshh=".$row["mshh"]."\"><img src=\"../img/". $row["hinhanh"]. "\">
                               <p>" . $row["TenHH"]. "<br>
                                   <p>". $temp. " đ</p>
                                   </p></a>
                               </div> ";
                               
                           }
                        }
                        
            ?>
     
    </div>

</div>



    <div class="div9" id="HopHoa">
        <h3 style="color: rgb(214, 51, 51);">Hộp Hoa Độc Đáo
            <hr>
        </h3>
        <div class="hophoa">

        <?php
                        $sql="select mshh,TenHH,Gia,hinhanh from hanghoa where maloaihang=\"LH2\" order by mshh desc";
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) >0){
                            while ($row =mysqli_fetch_assoc($result)){
                                $temp=number_format($row["Gia"],0,',','.');
                               echo "<div class=\"div7\"> 
                               <a href=\"detail.php?mshh=".$row["mshh"]."\"><img src=\"../img/". $row["hinhanh"]. "\">
                               <p>" . $row["TenHH"]. "<br>
                                   <p>". $temp. " đ</p>
                                   </p></a>
                               </div> ";
                               
                           }
                        }
                        
            ?>
        </div>
    </div>
    <div class="div12" id="CayDeBan">
        <h3 style="color: rgb(214, 51, 51);">Cây Để Bàn
            <hr>
        </h3>
        <div class="CayDeBan">
        <?php
                        $sql="select mshh,TenHH,Gia,hinhanh from hanghoa where maloaihang=\"LH3\"";
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) >0){
                            while ($row =mysqli_fetch_assoc($result)){
                                $temp=number_format($row["Gia"],0,',','.');
                               echo "<div class=\"div7\"> 
                               <a href=\"detail.php?mshh=".$row["mshh"]."\"><img src=\"../img/". $row["hinhanh"]. "\">
                               <p>" . $row["TenHH"]. "<br>
                                   <p>". $temp. " đ</p>
                                   </p></a>
                               </div> ";
                               
                           }
                        }
                        
            ?>
           
        </div>
    </div>



    <div class="div14" id="Combo">
        <h3 style="color: rgb(214, 51, 51);">Combo For Love
            <hr>
        </h3>
        <div class="Combo">

        <?php
                        $sql="select mshh,TenHH,Gia,hinhanh from hanghoa where maloaihang=\"LH4\"";
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) >0){
                            while ($row =mysqli_fetch_assoc($result)){
                                $temp=number_format($row["Gia"],0,',','.');
                               echo "<div class=\"div7\"> 
                               <a href=\"detail.php?mshh=".$row["mshh"]."\"><img src=\"../img/". $row["hinhanh"]. "\">
                               <p>" . $row["TenHH"]. "<br>
                                   <p>". $temp. " đ</p>
                                   </p></a>
                               </div> ";
                               
                           }
                        }
                        
            ?>
        </div>
    </div>


    <div class="div16" id="KeHoa">
        <h3 style="color: rgb(214, 51, 51);">Kệ Hoa Yêu Thích
            <hr>
        </h3>
        <div class="Kehoa">

        <?php
                        $sql="select mshh,TenHH,Gia,hinhanh from hanghoa where maloaihang=\"LH5\"";
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) >0){
                            while ($row =mysqli_fetch_assoc($result)){
                                $temp=number_format($row["Gia"],0,',','.');
                               echo "<div class=\"div7\"> 
                               <a href=\"detail.php?mshh=".$row["mshh"]."\"><img src=\"../img/". $row["hinhanh"]. "\">
                               <p>" . $row["TenHH"]. "<br>
                                   <p>". $temp. " đ</p>
                                   </p></a>
                               </div> ";
                               
                           }
                        }
                        
            ?>
        </div>
    </div>




        <div class="qua" id="qualuuniem">
            <h3 style="color: rgb(214, 51, 51);">Quà Lưu Niệm
                <hr>
            </h3>
            <div class="qualuuniem">
            <?php
                        $sql="select mshh,TenHH,Gia,hinhanh from hanghoa where maloaihang=\"LH6\"";
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) >0){
                            while ($row =mysqli_fetch_assoc($result)){
                                $temp=number_format($row["Gia"],0,',','.');
                               echo "<div class=\"div7\"> 
                               <a href=\"detail.php?mshh=".$row["mshh"]."\"><img src=\"../img/". $row["hinhanh"]. "\">
                               <p>" . $row["TenHH"]. "<br>
                                   <p>". $temp. " đ</p>
                                   </p></a>
                               </div> ";
                               
                           }
                        }
                        
            ?>
            </div>
        </div>

 

    <div class="contact">
        <img src="../img/logo2.PNG"  >
    </div>

    <div class="divcuoi">
        <div class="logo">
            <a href=""> <img src="../img/Logo1.PNG"></a>
            <h3>DIEP VI SHOP</h3>
            <p>Chỉ từ 199k - Mua hoa tươi không lo về giá. 
                Giao hàng miễn phí trong ngày, khu vực nội thành Cần Thơ, TpHCM. Thu tiền mặt tận nơi, chuyển khoản hoặc thanh toán qua thẻ. Lựa chọn hoàn hảo cho những dịp đặc biệt: Sinh Nhật, Kỉ Niệm, Lãng Mạn, Ngày Phụ Nữ, Ngày Valentine, Ngày của Mẹ.
                    Ngoài ra, Shop còn nhận đặt vòng hoa, kệ hoa khai trương, chúc mừng và cho các dịp khác.
            </p>
            <div class="nhanxet">
                <input required type="email" id="input1" name="Feedback" placeholder="Email Của Tôi">
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
               <a href="https://vi.wikipedia.org/wiki/Zalo" target="blank"><img src="../img/zalo.png" alt=""></a> 
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