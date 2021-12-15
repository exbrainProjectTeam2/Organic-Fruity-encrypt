<?php

require "../dbconnect/DBConnect.php";
$data = json_decode($_POST["send"], true);

$id = $data["id"];
$name =  $data["name"];
$email = $data["email"];
$phone = $data["phone"];

$db = new DBconnect();
$dbconnect = $db->connect();

$sql = $dbconnect->prepare("
    SELECT customer_id FROM customer_lists
    WHERE name = :name AND email = :email AND phone = :phone;
");
$sql->bindValue(":name", $name);
$sql->bindValue(":email", $email);
$sql->bindValue(":phone", $phone);
$sql->execute();
$user = $sql->fetchAll(PDO::FETCH_ASSOC);

if ($user[0]["customer_id"] == $id) {
    $result = true;
} else {
    $result = false;
}

print_r(json_encode($result));
