DROP TABLE prerequisites;

DROP TABLE prof_degrees;

DROP TABLE minor;

DROP TABLE meeting_days;

DROP TABLE enrollment;

DROP TABLE section;

DROP TABLE student;

DROP TABLE course;

DROP TABLE department;

DROP TABLE professor;

CREATE TABLE professor(
    ssn int NOT NULL,
    salary float NOT NULL,
    full_name varchar(20) NOT NULL,
    sex enum('M', 'F') NOT NULL,
    title varchar(50) NOT NULL,
    area_code tinyint NOT NULL,
    phone_number bigint NOT NULL,
    street_address varchar(20) NOT NULL,
    city varchar(20) NOT NULL,
    state varchar(2) NOT NULL,
    zip mediumint NOT NULL,
    PRIMARY KEY (ssn)
);

CREATE TABLE department(
    dept_no int NOT NULL,
    dept_name varchar(20) NOT NULL,
    telephone bigint NOT NULL,
    office_location varchar(20) NOT NULL,
    ssn int NOT NULL,
    PRIMARY KEY (dept_no),
    FOREIGN KEY (ssn) REFERENCES professor(ssn)
);

CREATE TABLE course(
    course_no int NOT NULL,
    title varchar(20) NOT NULL,
    textbook varchar(50) NOT NULL,
    units tinyint NOT NULL,
    dept_no int NOT NULL,
    PRIMARY KEY (course_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE student(
    cwid int NOT NULL,
    fname varchar(20) NOT NULL,
    lname varchar(20) NOT NULL,
    phone bigint NOT NULL,
    address varchar(50) NOT NULL,
    dept_no int NOT NULL,
    PRIMARY KEY (cwid),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE section(
    section_no int NOT NULL,
    course_no int NOT NULL,
    classroom varchar(20) NOT NULL,
    num_seats tinyint NOT NULL,
    begin_time time NOT NULL,
    end_time time NOT NULL,
    ssn int NOT NULL,
    PRIMARY KEY (section_no, course_no),
    FOREIGN KEY (ssn) REFERENCES professor(ssn)
);

CREATE TABLE enrollment(
    cwid int NOT NULL,
    section_no int NOT NULL,
    course_no int NOT NULL,
    grade varchar(2) NOT NULL,
    PRIMARY KEY (cwid, section_no, course_no),
    FOREIGN KEY (cwid) REFERENCES student(cwid),
    FOREIGN KEY (section_no, course_no) REFERENCES section(section_no, course_no)
);

CREATE TABLE meeting_days(
    section_no int NOT NULL,
    course_no int NOT NULL,
    DAY varchar(5) NOT NULL,
    PRIMARY KEY (section_no, course_no, DAY),
    FOREIGN KEY (section_no, course_no) REFERENCES section(section_no, course_no)
);

CREATE TABLE minor(
    cwid int NOT NULL,
    dept_no int NOT NULL,
    PRIMARY KEY (cwid, dept_no),
    FOREIGN KEY (cwid) REFERENCES student(cwid),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE prerequisites(
    orig_course_no int NOT NULL,
    prereq_course_no int NOT NULL,
    PRIMARY KEY (orig_course_no, prereq_course_no),
    FOREIGN KEY (orig_course_no) REFERENCES course(course_no),
    FOREIGN KEY (prereq_course_no) REFERENCES course(course_no)
);

CREATE TABLE prof_degrees(
    ssn int (9) NOT NULL,
    degree varchar(20) NOT NULL,
    PRIMARY KEY (ssn, degree),
    FOREIGN KEY (ssn) REFERENCES professor(ssn)
);