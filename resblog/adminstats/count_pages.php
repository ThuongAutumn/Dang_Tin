<?php
include("db.php");
$sql="SELECT * FROM page_hits ORDER BY page";

if ($result=mysqli_query($con,$sql))
{
  // Trả về số hàng trong tập kết quả
  $rowcount=mysqli_num_rows($result);
  printf("%d",$rowcount);
  // Bộ kết quả miễn phí
  mysqli_free_result($result);
  }

mysqli_close($con);
?>