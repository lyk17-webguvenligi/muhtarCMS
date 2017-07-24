<?php

require 'config.php';

if (isset($_SESSION['user_id']))
    header('Location: account.php');
else
    header('Location: login.php');