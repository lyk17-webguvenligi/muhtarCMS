<?php

function controlCsrfToken($method = 'POST')
{
    $invalidTokenMessage = 'Token hatalı!';

    if ($method == 'GET' && $_SERVER['REQUEST_METHOD'] == 'GET' && !(isset($_GET['csrf_token']) && $_GET['csrf_token'] === $_SESSION['csrf_token'])) {
        die($invalidTokenMessage);
    } elseif ($_SERVER['REQUEST_METHOD'] == 'POST' && !(isset($_POST['csrf_token']) && $_POST['csrf_token'] === $_SESSION['csrf_token'])) {
        die($invalidTokenMessage);
    }
}

function printTokenInput()
{
    echo '<input type="hidden" name="csrf_token" value="' . htmlentities($_SESSION['csrf_token']) . '">';
}
