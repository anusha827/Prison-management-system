<?php session_start();
	session_regenerate_id();
	
	require('connect.php');
	if($_SERVER["REQUEST_METHOD"] == "POST") {
	$no = $_POST['noinput'];
     $name = $_POST['nameinput']; 
	 
	 
     $d_date = $_POST['d_date'];
	 $sex = $_POST['gender'];
	 
	 $at_date = $_POST['a_date'];
	 $add = $_POST['addinput'];
	 $c = $_POST['c_no'];
	 

	  
	 $query= "UPDATE cleaner SET cname='$name',DOB='$d_date',sex='$sex',
     starting_date='$at_date',caddress='$add',
     cell_no='$c' WHERE cno = '$no'";
	 $result = mysqli_query($con,$query);
	 echo "Successfully Updated";
	 
 
	 
	 
	 }
	
	 
?>