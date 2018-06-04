<!DOCTYPE html>
<html>
<head>
    <title>CodeWars</title>
    <link rel="stylesheet" href="../css/all.css" type="text/css">
    <link rel="stylesheet" href="../css/train.css" type="text/css">
    <link rel="stylesheet" href="../css/main.css" type="text/css">
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <script src="../src/ace.js" type="text/javascript" charset="utf-8"></script>
    <script src="../src/theme-monokai.js" type="text/javascript" charset="utf-8"></script>
    <script src="../src/mode-php.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="../js/action.js"></script>
</head>
<body>
<header>
    <div id="logo">
        <a href="main">
            <img src="../images/logo.png" alt="Logo" height="140px" width="160px">
        </a>
    </div>
    <ul id="profile">
        <li class="menu-item">
            <a href="">
                <div>
                    <img src="../images/avatar.png">
                </div>
                <div class="rang">
                    <span>Master (1050)</span>
                </div>
            </a>
        </li>
        <li class="menu-item">
            <ul class="sub-menu">
                <li>
                    <a href="">View profile</a>
                </li>
                <hr>
                <li>
                    <a href="">Create new task</a>
                </li>
                <hr>
                <li>
                    <a href="">Sign Out</a>
                </li>
            </ul>
        </li>
    </ul>
</header>
@yield('main')