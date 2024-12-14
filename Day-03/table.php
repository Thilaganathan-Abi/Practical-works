<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<?php
		require_once 'dbconf.php';	
		try {
			// Corrected SQL query with explicit column list
			$sql = "INSERT INTO student (first_name, last_name, dob, email, phone_number, address, enrollment_date, gender) 
			        VALUES ('Yaso', 'Thilag', '1999-09-22', 'Thilag@example.com', '555-5678', '456 Elm St, City, Country', '2019-09-10', 'Female')";
            echo "<br>";
			
			// Execute the query
			$result = mysqli_query($connect, $sql);

			if ($result) {
				echo "New student record created successfully";
			} else {
				die("Error: " . mysqli_error($connect));
			}

		} catch (Exception $e) {
			die($e->getMessage());
		}
        
	?>

</body>
</html>