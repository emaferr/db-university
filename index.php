<?php
define('DB_SERVERNAME','localhost');
define('DB_USERNAME','root');
define('DB_PASSWORD','root');
define('DB_NAME', 'university');
define('DB_PORT','8888');
// var_dump(DB_SERVERNAME,DB_USERNAME,DB_PASSWORD,DB_NAME);

$connection = new mysqli(DB_SERVERNAME,DB_USERNAME,DB_PASSWORD,DB_NAME);

// VERIFICO CONNESSIONE
if($connection && $connection->connect_error) {
    echo 'Connection failed: ' . $connection->connect_error;
} else {
    echo 'Connection successful!';
}
// var_dump($connection);


$query = 'SELECT * FROM departments';
$results = $connection->query($query);
// var_dump($results);

?>
<h2>Dipartimenti Università</h2>
<?php

if ($results && $results->num_rows > 0) {
    //var_dump($results->fetch_assoc()); fetches a single element from the results
    while ($department = $results->fetch_assoc()) {
  ?>
    <ul>
        <li><?= $department['name']?></li>
    </ul>

  <?php
    }
  }
  # Close the connection
  $connection->close;
  ?>