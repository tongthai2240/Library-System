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


<table style="width:100%" border="0" cellspacing="2" cellpadding="0">
<tr>
	<td style="font-size:20px;"><b>ชื่อหนังสือ</b></td>
	<td style="font-size:20px;"><b>ชื่อผู้แต่ง</b></td>
	<td style="font-size:20px;"><b>วันที่ยืม</b></td>
	<td style="font-size:20px;"><b>ชื่อนิสิต</b></td>
	<td style="font-size:20px;"><b>อายุ</b></td>
	

</tr>
<?php


$sql = "SELECT S.StudentName , S.Department, S.Age,
S.BirthDate , BI.BookName,BI.Author,BR.BorrowDate
FROM student S , book_infos BI , borrow BR
WHERE BR.BookID = BI.BookNo
AND BR.ReturnDate != 0";

$i = 1;
$result = mysqli_query($conn,$sql);
$numCol = 3;


if(mysqli_num_rows($result)==0){
	print("ไม่พบผลลัพธ์");
	exit();
}

while($row=mysqli_fetch_assoc($result)){
?>
<?php if($i%$numCol==1){ ?>
	<tr>
		<td width="100"><?=$row["BookName"]?><br /></td>
		<td width="100"><?=$row["Author"]?><br /></td>
		<td width="100"><?=$row["BorrowDate"]?><br /></td>
		<td width="100"><?=$row["StudentName"]?><br /></td>
		<td width="100"><?=$row["Age"]?><br /></td>
		
	</tr>
<?php } ?>
<?php $i++;  
}
?>  
</table>

<center>
	<form method="post" action="library.php">
    	<input type="submit" value="Home" style="width:100px;height:50px" />
	</form>
</center>