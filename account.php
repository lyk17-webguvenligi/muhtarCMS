<?php
/**
 * Created by PhpStorm.
 * User: element
 * Date: 24.07.2017
 * Time: 15:56
 */

require 'config.php';

if (!isset($_SESSION['user_id']))
    die('baba senin yetkin yok ya');

$query = $db->prepare("select * from actions where user_id=?");
$query->execute([$_SESSION['user_id']]);
$results = $query->fetchAll(PDO::FETCH_ASSOC);
$count = $query->rowCount();

if ($loggedUser['isAdmin'])
    echo '<a href="admin.php">admin paneli</a>';

echo '<br>';
echo '<a href="logout.php?csrf_token=' . urlencode($_SESSION['csrf_token']) . '">cikis yap</a>';
echo '<br>';

if ($count) {

    $total = 0;
    echo '
    <table border="1">
        <tr>
            <th>tarih</th>
            <th>borc</th>
        </tr>
    ';
    foreach ($results as $result) {
        echo '
            <tr>
                <td>' . $result['date'] . '</td>
                <td>' . $result['price'] . '</td>
            </tr>
        ';
        $total += $result['price'];
    }
    echo '</table>';

    echo 'total borc: ' . $total;

} else {
    echo '
    <script >
    alert("borcun yok! tebrikler");
</script>
<img src="http://www.reactiongifs.com/wp-content/uploads/2012/09/Billy-D_Approves.gif">';
}
