<?php
#(this is the wrong way to build an application)

#Grab the request parameters
$name = $_POST['name'];
$created_at = date();
$preferred_feeling_id = $_POST['preferred_feeling_id'];

#Save them into the database
mysql_connect(localhost, $username, $password, $database);

$query = "INSERT INTO feelings(name, created_at, preferred_feeling_id)
			VALUES('$name','$created_at','$preferred_feeling_id');";

mysql_query($query);

mysql_close();

?>
<!-- imagine proper html -->
<h1>You are feeling <?php $name ?>, <?php $created_at ?></h1>
<p>You'd rather be <?php $preferred_feeling_name ?></p><!-- preferred feeling name?! -->
x