<?php session_start();
	session_regenerate_id();
	
	require('connect.php');
	if($_SERVER["REQUEST_METHOD"] == "POST") {
	$no = $_POST['noinput'];
     $name = $_POST['nameinput']; 
	 $d_date = $_POST['date'];
	 $add = $_POST['addinput'];
	 $at_date = $_POST['a_date'];
	 $sex = $_POST['gender'];
	 $b = $_POST['b_no'];
	 $g = $_POST['shift'];
	 $p = $_POST['password'];

	  
     $query= "UPDATE guard SET gname ='$name' ,
     DOB='$d_date',address='$add',starting_date='$at_date',
     sex='$sex',block_no='$b',shift='$g',password='$p' WHERE gno ='$no'";
	 $result = mysqli_query($con,$query);
	 echo "Successfully Updated";
	 
 
	 
	 
	 }
	
	 
?>