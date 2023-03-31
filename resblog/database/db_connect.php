<?php
$con=mysqli_connect("localhost","root","","blog_admin_db");
// Kiem tra ket noi
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
 ?>