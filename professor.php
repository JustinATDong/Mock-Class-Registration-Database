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
        
        <h3>Get Professor Class info by SSN</h3>
        <form name="form">
            Professor SSN: <input type="text" name="prof_ssn">
            <input type="submit">
        </form>
<?php 
$connection = mysqli_connect('mariadb', 'cs332t10', '2c0sQx4E', 'cs332t10');
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$getProfClassesBySsnQuery = "
SELECT C.title,
    S.classroom,
    M.day,
    S.begin_time
FROM professor P,
    course C,
    section S,
    meeting_days M
WHERE P.ssn = %s
    AND P.ssn = S.ssn
    AND S.course_no = C.course_no
    AND S.section_no = M.section_no
    AND S.course_no = M.course_no";

try {
    $prof_ssn = $_GET['prof_ssn'];
} catch (ErrorException $e) {}

$complete_query = sprintf($getProfClassesBySsnQuery, $prof_ssn);

if (!empty($_GET['prof_ssn'])){
    $result = mysqli_query($connection, $complete_query);
    print "<pre>";
    print "<table border=1>";
    print "<th>Titles</th><th>Classrooms</th><th>Day<th><th>Class Start Time<th>";

    while ($row = mysqli_fetch_assoc($result)){
        
        print "<tr>";

        print "<td>" . $row['title'] . "</td>";
        print "<td>" . $row['classroom'] . "</td>";
        print "<td>" . $row['day'] . "<td>";
        print "<td>" . $row['begin_time'] . "</td>";
        
        print "</tr>";
    }

    print "</table>";
    print "</pre>";
}
mysqli_close($connection);
?>

        <h3>Get Students grades by course and section number</h3>
        <form name="form">
            Course Number: <input type="text" name="course_no">
            Section Number: <input type="text" name="section_no">
            <input type="submit">
        </form>
<?php 
$connection = mysqli_connect('mariadb', 'cs332t10', '2c0sQx4E', 'cs332t10');
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$getStudentgradesbyCourseandSectionNumber = "
SELECT E.grade,
    count(*) as num_students
FROM enrollment E
WHERE E.section_no = %s
    AND E.course_no = %s
GROUP BY E.grade;";

try {
    $section_no = $_GET['section_no'];
    $course_no = $_GET['course_no'];
} catch (ErrorException $e) {}

$complete_query = sprintf($getStudentgradesbyCourseandSectionNumber, $section_no, $course_no);

if (!empty($_GET['section_no']) && !empty($_GET['course_no'])){
    $result = mysqli_query($connection, $complete_query);
    print "<pre>";
    print "<table border=1>";
    print "<th>Grade</th><th>Number of Students</th>";

    while ($row = mysqli_fetch_assoc($result)){
        
        print "<tr>";

        print "<td>" . $row['grade'] . "</td>";
        print "<td>" . $row['num_students'] . "</td>";
        
        print "</tr>";
    }

    print "</table>";
    print "</pre>";
}
mysqli_close($connection);
?>
    </body>
</html>