<?php session_start();
	session_regenerate_id();
	
	require('connect.php');
	if($_SERVER["REQUEST_METHOD"] == "POST") {
	$name = $_POST['noinput'];
    $pass = $_POST['passinput']; 
	 
	

	  
	 $query= "UPDATE admin SET name='$name',password= '$pass' WHERE name = '$name' ";
	 $result = mysqli_query($con,$query);
	 echo "Successfully Updated";
	 
 
	 
	 
	 }
	
	 
?>