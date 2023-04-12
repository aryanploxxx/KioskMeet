<?php
include "../partials/session.php";
include "../partials/messages.php";
include "../partials/faculty_login_required.php";
include "../partials/sql_connect.php";
?>
<?php
$id = $_SESSION['id'];
$faculty_res = mysqli_query($conn, "select name,dept,phno from faculty where id = $id");
$faculty = mysqli_fetch_assoc($faculty_res);
?>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="teacher.css">
    <title>Faculty Dashboard | KioskMeet</title>
    <link rel="shortcut icon" href="../KioskMeet_Favicon.png" type="image/x-icon">
</head>

<body>
    <?php include "../partials/navbarTeacher.php"  ?>
    <div id="container">
        <h3 style="color: white;">PROFILE</h3>
        <div id="profile-wrapper">
            <small>Status: Logged in</small>
            <table>
                <?php
                foreach ($faculty as $key => $val) {
                    echo "<tr>
                    <th> $key</th>
                    <td>$val</td>
                    </tr>";
                }
                ?>
            </table>
        </div>
        
    </div>
</body>