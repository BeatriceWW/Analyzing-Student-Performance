-- Q1-- avg_exam_score_by_study_and_extracurricular

SELECT hours_studied, AVG(exam_score) AS avg_exam_score
FROM student_performance
WHERE hours_studied > 10 AND extracurricular_activities = 'Yes'
GROUP BY hours_studied 
ORDER BY hours_studied DESC
LIMIT 30; 

-- Q2 -- avg_exam_score_by_hours_studied_range

WITH avg_exam_score_by_hours_studied_range AS(
    SELECT 
        CASE WHEN hours_studied BETWEEN 1 AND 5 THEN '1-5 hours'
	         WHEN hours_studied BETWEEN 6 AND 10 THEN '6-10 hours'
	         WHEN hours_studied BETWEEN 11 AND 15 THEN '11-15 hours'
	         ELSE '16+ hours'
	    
        END AS hours_studied_range,

        AVG(exam_score) AS avg_exam_score
    FROM student_performance
    GROUP BY hours_studied_range
) 
SELECT hours_studied_range, avg_exam_score
FROM avg_exam_score_by_hours_studied_range
ORDER BY avg_exam_score DESC 


-- Q3 -- student_exam_ranking

WITH StudentsRanks AS (
    SELECT attendance, hours_studied, sleep_hours, tutoring_sessions,
	       DENSE_RANK() OVER(ORDER BY exam_score DESC) AS exam_rank
	FROM public.student_performance
)
SELECT attendance, hours_studied, sleep_hours, tutoring_sessions, exam_rank
FROM StudentsRanks
ORDER BY exam_rank ASC 
LIMIT 30; 