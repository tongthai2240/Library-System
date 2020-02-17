<?php
$dbhost = 'localhost';
$dbuser = 'libery';
$dbpass = 'tongthai2240';
$dbname = 'libery';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(! $conn ){
	die('Could not connect: ' . mysqli_error());
}
?>

<h1 style ="color:purple;">ค้นหาหนังสือ</h1>
	<form action="BookBorrow.php" method="post">
        >><input type="text" name="search" id="search" placeholder="ใส่ชื่อหนังสือที่ต้องการ" style="width:350px;" /><<
        <br />
		<br />
        <div style="padding-left:25px">
            <input type="submit" value="search" style="width:100px;height:50px" />
        </div>
        
		
	</form>

<h2 style ="color:purple;">แสดงรายละเอียดชื่อผู้ยืม</h2>
    <form method="post" action="BorrowShow.php">
        <div style="padding-left:25px">
        <input type="submit" value="show" style="width:100px;height:50px" />
        </div>
    </form>

<h3 style ="color:purple;">รายการหนังสือที่ต้องการยืม</h3>
    <ul style="list-style-type:square;">
        <li>พัฒนา Web Apps ด้วย React Bootstrap + Redux</li>
        <li>คู่มือเขียนโปรแกรมภาษา Python ฉบับปรับปรุง</li>
        <li>คู่มือพัฒนาเว็บแอพพลิเคชั่นด้วย Angular</li>
        <li>Artificial Intelligence with Machine Learning</li>
        <li>พัฒนาเว็บแอพพลิเคชันด้วย Node.js Express+MongoDB</li>
        <li>พัฒนา IOT บนแพลตฟอร์ม Arduino ด้วย NodeMCU</li>
        <li>คู่มือเขียนโปรแกรมด้วยภาษา C ฉบับสมบูรณ์</li>
        <li>คณิตศาสตร์วิศวกรรมไฟฟ้า</li>
        <li>สัญญาณ ระบบ และการควบคุม</li>
        <li>การวิเคราะห์โครงสร้าง</li>
    </ul>




