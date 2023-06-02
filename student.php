<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>CPSC 332 Final Project</h1>
        <nav id="navigation">
            <ul id="nav">
                <li><a href="index.php">Home</a></li>
                <li><a href="student.php">Student Queries</a></li>
                <li><a href="professor.php">Professor Queries</a></li>
            </ul>
        </nav>
        
        <h3>Get Section info by Course Number</h3>
        <form name="form">
            Course Number: <input type="text" name="course_no">
            <input type="submit">
        </form>
<?php 
$connection = mysqli_connect('mariadb', 'cs332t10', '2c0sQx4E', 'cs332t10');
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$getSectionInfoByCourseNumber = "
SELECT S.section_no,
    S.classroom,
    M.day,
    S.begin_time,
    count(*) as num_students
FROM section S,
    meeting_days M,
    enrollment E
WHERE S.course_no = %s
    AND S.section_no = M.section_no
    AND S.course_no = M.course_no
    AND S.section_no = E.section_no
    AND S.course_no = E.course_no
GROUP BY E.section_no, M.day;";

try {
    $course_no = $_GET['course_no'];
} catch (ErrorException $e) {}

$complete_query = sprintf($getSectionInfoByCourseNumber, $course_no);

if (!empty($_GET['course_no'])){
    $result = mysqli_query($connection, $complete_query);
    print "<pre>";
    print "<table border=1>";
    print "<th>Section Number</th><th>Classroom</th><th>Day</th><th>Class Start Time</th><th>Number of Students</th>";

    while ($row = mysqli_fetch_assoc($result)){
        
        print "<tr>";

        print "<td>" . $row['section_no'] . "</td>";
        print "<td>" . $row['classroom'] . "</td>";
        print "<td>" . $row['day'] . "</td>";
        print "<td>" . $row['begin_time'] . "</td>";
        print "<td>" . $row['num_students'] . "</td>";
        
        print "</tr>";
    }

    print "</table>";
    print "</pre>";
}
mysqli_close($connection);
?>

        <h3>Get Student grades and enrollments by CWID</h3>
        <form name="form">
            CWID: <input type="text" name="cwid">
            <input type="submit">
        </form>
<?php 
$connection = mysqli_connect('mariadb', 'cs332t10', '2c0sQx4E', 'cs332t10');
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$getStudentgradesAndEnrollmentsByCWID = "
SELECT S.cwid,
    C.title,
    E.grade
FROM student S,
    course C,
    enrollment E
WHERE C.course_no = E.course_no
    AND S.cwid = E.cwid
    AND S.cwid = %s;";

try {
    $cwid = $_GET['cwid'];
} catch (ErrorException $e) {}

$complete_query = sprintf($getStudentgradesAndEnrollmentsByCWID, $cwid);

if (!empty($_GET['cwid'])){
    $result = mysqli_query($connection, $complete_query);
    print "<pre>";
    print "<table border=1>";
    print "<th>CWID</th><th>Title</th><th>Grade</th>";

    while ($row = mysqli_fetch_assoc($result)){
        
        print "<tr>";

        print "<td>" . $row['cwid'] . "</td>";
        print "<td>" . $row['title'] . "</td>";
        print "<td>" . $row['grade'] . "</td>";
        
        print "</tr>";
    }

    print "</table>";
    print "</pre>";
}
mysqli_close($connection);
?>
    </body>
</html>