<?php
/**
 * Created by PhpStorm.
 * User: element
 * Date: 24.07.2017
 * Time: 14:36
 */

session_start();
session_regenerate_id();


$db = new PDO('mysql:host=localhost;dbname=muhtarCMS;charset=utf8', 'root', 'root');

if (isset($_SESSION['user_id'])) {
    $queryUser = $db->prepare("select * from users where id=?");
    $queryUser->execute([$_SESSION['user_id']]);
    $loggedUser = $queryUser->fetch(PDO::FETCH_ASSOC);
}