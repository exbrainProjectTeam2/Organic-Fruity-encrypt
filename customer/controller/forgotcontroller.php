<?php

if (isset($_POST["send"])) {
    $data = json_decode($_POST["send"], true);
    $femail = $data["femail"];
    $fphone = $data["fphone"];
    $count = $data["count"];
    if ($count != 3) {
        require "../dbconnect/DBConnect.php";
        // call db 
        $db = new DBConnect();
        $dbconnect = $db->connect();

        $sql = $dbconnect->prepare("
            SELECT customer_id FROM customer_lists
            WHERE  email = :email;
        ");
        $sql->bindValue(":email", $femail);
        $sql->execute();

        $result = $sql->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) == 1) {
            $sql = $dbconnect->prepare("
            SELECT customer_id FROM customer_lists
            WHERE email = :email AND phone = :phone;
        ");

            $sql->bindValue(":email", $femail);
            $sql->bindValue(":phone", $fphone);
            $sql->execute();
            $account = $sql->fetchAll(PDO::FETCH_ASSOC);

            if (count($account) == 1) {
                print_r(json_encode($result));
            } else {
                echo "phone";
            }
        } else {
            echo "email";
        }
    } else {
        print_r(json_encode(0));
    }
}
