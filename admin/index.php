<?php
include "../partials/session.php";
include "../partials/messages.php";
include "../partials/sql_connect.php";
include "../partials/admin_login_required.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin.css">
    <title>Admin Panel | KioskMeet</title>
</head>

<body style='background-image: url("../bg_gradient.jpg"); background-size: 100%;'>
    <div id="navbar">
        <!-- <div id="title">
            <h3>MiniKiosk</h3><small> <a href="index.php"> Admin Panel </a></small>
        </div> -->
        <div id="title">
            <img src="../KioskMeet_Logo_White.png" style="width: 200px;">
            <small style="color: white;float: right;">Admin Panel</small>
        </div>
        <div id="nav-items">
            <div class="nav-item"><a href="/dsw_proj/auth/logout.php" style="color: white;">Logout</a></div>
            <style>
                a {
                    padding: 10px 15px;
                    border: 1px solid white;
                    margin: 0
                }
            </style>
        </div>
    </div>
    <div id="profile-wrapper">
        <form action="add_student.php" method="get">
            <input type="submit" value="Add Student">
        </form>
        <form action="add_teacher.php" method="get">
            <input type="submit" value="Add Teacher">
        </form>
        <form action="list_students.php" method="get">
            <input type="submit" value="View/Edit Existing Student Data">
        </form>
        <form action="list_teachers.php" method="get">
            <input type="submit" value="View/Edit Existing Teacher Data">
        </form>

    </div>
</body>

</html>