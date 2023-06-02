SELECT
    C.title,
    S.classroom,
    M.day,
    S.begin_time
FROM
    professor P,
    course C,
    section S,
    meeting_days M
WHERE
    P.ssn = 1
    AND P.ssn = S.ssn
    AND S.course_no = C.course_no
    AND S.section_no = M.section_no
    AND S.course_no = M.course_no;

--Given the social security number of a professor, list the titles, classrooms, meeting days and time of his/her classes.