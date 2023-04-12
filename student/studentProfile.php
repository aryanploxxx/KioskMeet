<?php
include "../partials/session.php";
include "../partials/messages.php";
include "../partials/student_login_required.php";
include "../partials/sql_connect.php";
?>
<?php
$id = $_SESSION['id'];
$student_res = mysqli_query($conn, "select name,dob,semester,batch,course from student where id = $id");
$student = mysqli_fetch_assoc($student_res);
?>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="student.css">
    <title>Student Dashboard | KioskMeet</title>
    <link rel="shortcut icon" href="../KioskMeet_Favicon.png" type="image/x-icon">
</head>

<body>
    <?php include "../partials/navbarStudent.php"  ?>
    <div id="container">
        <h3 style="position: absolute;color: white;margin-bottom: 200px;">PROFILE</h3>
        <div id="profile-wrapper">
            <h2 style="color: white;">Status: Logged in</h2>
            <table>
                <?php
                foreach ($student as $key => $val) {
                    echo "<tr>
                    <div id='key'><th>$key</th></div>
                    <td>$val</td>
                    </tr>";
                }
                ?>
        </table>
    </div>
    <?php
        $string = 'random string';
    ?>
</body>
</html>