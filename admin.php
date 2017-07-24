<?php
/**
 * Created by PhpStorm.
 * User: element
 * Date: 24.07.2017
 * Time: 16:27
 */

require 'config.php';

if (!$loggedUser['isAdmin'])
    die('baba senin yetkin yok ya');

$query = $db->prepare("select * from users");
$query->execute();
$results = $query->fetchAll(PDO::FETCH_ASSOC);


if (isset($_POST['user_id']) && isset($_POST['price'])) {

    $user_id = $_POST['user_id'];
    $price = $_POST['price'];
    $date = date('Y-m-d');
    $query2 = $db->prepare("insert into actions (`user_id`, `date`, `price`) VALUES (?, ?, ?)");
    $query2->execute([$user_id, $date, $price]);
    echo '
    <script>
    alert("borc kitlendi");
    </script>
    ';
}

?>

<form action="" method="post">
    <select name="user_id" id="">
        <?php
        foreach ($results as $result) {
            echo '<option value="' . $result['id'] . '">' . $result['username'] . '</option>';
        }
        ?>
    </select>
    <input type="number" name="price">
    <input type="submit"/>
</form>
