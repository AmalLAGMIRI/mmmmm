<?php include('./partial/header.php');



    $row = [];
    if (isset($_GET['id'])) {
        include('./database/connection.php');
        $pId = $_GET['id'];
        $sql = 'SELECT * FROM medicaments WHERE id="'.$pId.'"';
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
        }
    }
    // print_r($row);












?>
        <div class="login-form-container">

        <h1>Ajouter un medicaments</h1>
            <form action="./database/medicaments.php" method="post">
            <div class="form-group">
                <input name="name" type="text" class="form-control" placeholder="Enter Name of medicament">
            </div>
            <div class="form-group">
                <input name="description" type="text" class="form-control" placeholder="Enter Description">
            </div>
            <button type="submit" class="btn btn-primary">Envoyer</button>
            </form>
        </div>
<?php include('./partial/footer.php'); ?>
