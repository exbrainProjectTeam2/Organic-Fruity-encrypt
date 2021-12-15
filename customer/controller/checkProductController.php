<?php
require "../dbconnect/DBConnect.php";

//call DB class
$db = new DBConnect();
$dbconnect = $db->connect();
if (isset($_POST["send"])) {
    $product = json_decode($_POST["send"], true);
    if ($product["name"] != "" && $product["price"] != "" && $product["pid"] != "") {
        $sql = $dbconnect->prepare("
                SELECT * FROM m_product
                WHERE p_id = :pid;
            ");
        $sql->bindValue(":pid", $product["pid"]);
        $sql->execute();
        $result = $sql->fetchAll(PDO::FETCH_ASSOC);
        if ($product["name"] == $result[0]["name"] && $product["pid"] == $result[0]["p_id"] && $product["price"] == $result[0]["salePrice"]) {
            echo "true";
        } else {
            echo "false";
        }
    } else {
        echo "false";
    }
} else {
    echo "doesn't have";
}
