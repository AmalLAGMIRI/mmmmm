<?php include("./connection.php");
// HAD CODE BACH TJIB M3TOMAT

$name = $_POST['name'];
$description = $_POST['description'];

$sql = "INSERT INTO medicaments (name, description) VALUES ('$name', '$description')";

if ($conn->query($sql) === TRUE) {
    header("Location: http://localhost/amallagmiri/med.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>