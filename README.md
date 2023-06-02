# Mock-Class-Registration-Database
This was a project I worked on with two other students that involved us creating a mock database which were modeled after a couple specific rules. We designed a webpage for our database and it shows the outputs after entering specific words/numbers based off of information in the database.


Project Descriptions:
You are asked to design a database for a university that satisfies the following require-
ments:
1. The database keeps information of each professor, including the social security num-
ber, name, address, telephone number, sex, title, salary, and college degrees. The address
includes street address, city, state, and zip code. The telephone number includes the
area code and 7 digit number.
2. Each department has a unique number, name, telephone, office location, and a chair-
person who is a professor.
3. Each course has a unique number, title, textbook, units. Each course also has a set
of prerequisite courses. Each course is offered by a department.
4. Each course may have several sections. Each section has a section number that is
unique within the course, a classroom, a number of seats, meeting days, a beginning
time, an ending time. Each section is taught by a professor.
5. The database keeps student records, including the campus wide ID, name, address,
and telephone number. Each student majors in one department and may minor in sev-
eral departments. The name includes first name and last name.
6. The database keeps enrollment records. Each record has a student, a course section,
and a grade.
Design your database and create at least the following numbers of records:
8 students, 2 departments, 3 professors,
4 courses, 6 sections, 20 enrollment records

You should provide interfaces for the following individuals:

For the professors:

a. Given the social security number of a professor, list the titles, classrooms, meeting
days and time of his/her classes.

b. Given a course number and a section number, count how many students get each
distinct grade, i.e. ‘A’, ‘A-’, ‘B+’, ‘B’, ‘B-’, etc.

For the students:

a. Given a course number list the sections of the course, including the classrooms, the
meeting days and time, and the number of students enrolled in each section.

b. Given the campus wide ID of a student, list all courses the student took and the
grades.

# ER DIAGRAM:

![pasted image 0](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/c437d152-b3fd-4da9-b5d8-2ed805d9a773)

# RELATIONAL SCHEMA:

![pasted image 0](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/463ade79-baa9-4338-9478-7a0831fbd724)

# RESULTS:

# HOMEPAGE

![homepage](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/c72c0012-60ca-48b9-8e04-a0e095f8e710)

![student queries](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/8ce0d59c-c43b-4df9-9ae7-0def0d687ace)

![Student's grades by course and section#](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/a9fe53fd-9598-4101-8ecd-f4bb405c4b16)

![Student grades and enrollment by CWID](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/bc4d8497-ee03-433f-8350-b404ed511aaf)

![Professor queries](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/cf0b315a-3dd4-4dab-b055-50289f472076)

![Professor class info](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/cf73f0be-0286-41d8-a333-b2ac57c0867b)

![pasted image 0](https://github.com/JustinATDong/Mock-Class-Registration-Database/assets/70672580/692b8527-c681-4cfe-9551-adb8c41cff33)

