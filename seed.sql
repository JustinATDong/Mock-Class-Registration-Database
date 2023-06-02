INSERT INTO
    professor (
        ssn,
        salary,
        full_name,
        sex,
        title,
        area_code,
        phone_number,
        street_address,
        city,
        state,
        zip
    )
VALUES
    (
        301,
        25000,
        'Stewie Griffin',
        'M',
        'Professor of Engineering',
        1,
        1234567890,
        '24 Melrose Dr',
        'Fullerton',
        'CA',
        92392
    ),
    (
        302,
        27000,
        'Joddi Puddin',
        'M',
        'Professor of Science',
        1,
        0987654321,
        '17 Bellflower Ave',
        'Irvine',
        'CA',
        92476
    ),
    (
        303,
        22000,
        'Brent Adams',
        'M',
        'Professor of CS',
        1,
        1213141516,
        '111 N Beverly Pkwy',
        'Hesperia',
        'CA',
        92393
    );

INSERT INTO
    department (
        dept_no,
        dept_name,
        telephone,
        office_location,
        ssn
    )
VALUES
    (101, 'CSE', 0123456789, 'CSPC-120', 301),
    (102, 'MATH', 9876543210, 'ECE-123', 302);

INSERT INTO
    course(course_no, title, textbook, units, dept_no)
VALUES
    (501, 'C', 'Intro to C', 3, 101),
    (502, 'Java', 'Intro to Java', 3, 101),
    (503, 'Calculus 1', 'Intro to Calculus', 4, 102),
    (
        504,
        'Calculus 3',
        'Multivariable Calculus',
        3,
        102
    );

INSERT INTO
    section (
        section_no,
        course_no,
        classroom,
        num_seats,
        begin_time,
        end_time,
        ssn
    )
VALUES
    (
        400,
        501,
        'CPSC-110A',
        30,
        '14:30:00',
        '16:00:00',
        301
    ),
    (
        401,
        501,
        'CPSC-110B',
        30,
        '8:30:00',
        '10:00:00',
        301
    ),
    (
        402,
        502,
        'CPSC-110A',
        30,
        '10:30:00',
        '12:00:00',
        301
    ),
    (
        403,
        502,
        'CPSC-110B',
        30,
        '12:30:00',
        '14:00:00',
        301
    ),
    (
        404,
        503,
        'CPSC-110A',
        30,
        '13:30:00',
        '15:00:00',
        302
    ),
    (
        405,
        504,
        'CPSC-110B',
        30,
        '8:30:00',
        '10:00:00',
        302
    );

INSERT INTO
    student (
        cwid,
        fname,
        lname,
        phone,
        address,
        dept_no
    )
VALUES
    (
        790,
        'Christopher',
        'Grey',
        1234567890,
        '1234 Main St, Fullerton, CA 92831',
        101
    ),
    (
        791,
        'Tulip',
        'Brown',
        0987654321,
        '5134 Main St, Fullerton, CA 92831',
        101
    ),
    (
        792,
        'Jackie',
        'Brown',
        1213141516,
        '34 Main St, Fullerton, CA 92831',
        101
    ),
    (
        793,
        'Brent',
        'Lopez',
        2324252627,
        '341234 Main St, Fullerton, CA 92831',
        101
    ),
    (
        794,
        'Joddi',
        'Puddin',
        3435363738,
        '312344 Main St, Fullerton, CA 92831',
        101
    ),
    (
        795,
        'Kenny',
        'Penny',
        4546474849,
        '12344 Main St, Fullerton, CA 92831',
        101
    ),
    (
        796,
        'Bryson',
        'Tiller',
        5657585950,
        '32345 Main St, Fullerton, CA 92831',
        101
    ),
    (
        797,
        'Trent',
        'Stewie',
        6768696061,
        '31234 Main St, Fullerton, CA 92831',
        101
    );

INSERT INTO
    enrollment (cwid, section_no, course_no, grade)
VALUES
    (790, 400, 501, 'A+'),
    (791, 401, 502, 'D+'),
    (792, 402, 503, 'B-'),
    (793, 403, 504, 'F'),
    (794, 404, 501, 'B+'),
    (795, 405, 502, 'C'),
    (796, 400, 503, 'A-'),
    (797, 401, 504, 'D'),
    (790, 402, 501, 'C-'),
    (791, 403, 502, 'B'),
    (792, 404, 503, 'F'),
    (793, 405, 504, 'C+'),
    (794, 400, 501, 'D+'),
    (795, 401, 502, 'A-'),
    (796, 402, 503, 'C'),
    (797, 403, 504, 'B+'),
    (790, 404, 501, 'A'),
    (791, 405, 502, 'F'),
    (792, 400, 503, 'B-'),
    (791, 405, 502, 'B');
    
INSERT INTO
    meeting_days (section_no, course_no, day)
VALUES
    (400, 501, 'Mon'),
    (400, 501, 'Wed'),
    (401, 502,'Mon'),
    (401, 502, 'Wed'),
    (402, 503,'Tue'),
    (402, 503,'Thu'),
    (403, 504,'Fri'),
    (404, 501, 'Sat'),
    (405, 504, 'Sun');

INSERT INTO
    minor (cwid, dept_no)
VALUES
    (1234567890, 101),
    (0987654321, 101),
    (1213141516, 101),
    (2324252627, 101),
    (3435363738, 101),
    (4546474849, 101),
    (5657585950, 101),
    (6768696061, 101);

INSERT INTO
    prerequisites (ori_course_no, prereq_course_no)
VALUES
    (501),
    (502),
    (503),
    (504);
/* Idk for this one bc both the elements point to course_no, check this one out*/

INSERT INTO
    prof_degrees(ssn, degree)
VALUES
    (301),
    (302),
    (303);

/* unsure for the degree element, check this one out too*/