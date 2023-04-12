<?php
$navbar = '
<div id="navbar"> 
    <div id="title">
        <img src="../KioskMeet_Logo_White.png" style="width: 200px;">
        <small style="color: white;float: right;">Student Dashboard</small>
    </div>
    <div id="nav-items">
        <div class="nav-item"><a href="studentProfile.php" style="color: white;">Profile</a></div>
        <div class="nav-item"><a href="attendance.php" style="color: white;">Attendance</a></div>
        <div class="nav-item"><a href="results.php" style="color: white;">Result</a></div>
        <div class="nav-item"><a href="#" style="color: white;">Join a Meet</a></div>
        <div class="nav-item"><a href="/dsw_proj/auth/logout.php" style="color: white;">Logout</a></div>
    </div>
</div>
<style>
    a {
        padding: 10px 15px;
        border: 1px solid white;
        margin: 0
    }
</style>
';
echo $navbar;
