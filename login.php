<?php
/**
 * Created by PhpStorm.
 * User: element
 * Date: 24.07.2017
 * Time: 14:59
 */

require 'config.php';

controlCsrfToken();

if (isset($_POST['username']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $query = $db->prepare("select * from users where username=? AND password=?");
    $query->execute([$username, $password]);
    $result = $query->fetch(PDO::FETCH_ASSOC);
    $count = $query->rowCount();

    if ($count) {
        $_SESSION['user_id'] = $result['id'];
        if ($result['isAdmin'])
            header('Location: admin.php');
        else
            header('Location: account.php');
    } else {
        echo 'bilgiler yanlis';
    }
}

?>

<form action="" method="post">
    <?php printTokenInput() ?>
    username <input type="text" name="username"><br>
    password <input type="password" name="password"><br>
    <input type="submit">
</form>
