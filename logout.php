<?php
/**
 * Created by PhpStorm.
 * User: element
 * Date: 24.07.2017
 * Time: 16:10
 */

require 'config.php';

controlCsrfToken('GET');

session_destroy();

header('Location: login.php');
