<?php
$con=mysqli_connect("localhost","root","","blog_admin_db");
// Kiểm tra kết nối
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
 ?>