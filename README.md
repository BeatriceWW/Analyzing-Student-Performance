Project: Analyzing Student Performance 

In today's fast-paced and competitive educational environment, understanding the factors influencing student performance success is more important than ever. In this project, I examine a dataset containing details about various aspects of student life, such as hours studied, sleep patterns, attendance, and more, to uncover what truly impacts exam performance. By querying this data, we'll be able to identify critical drivers of success and provide insights that could help students, teachers, and policymakers make informed decisions. 

The data table for this project is called student_performance and includes the following columns:

* attendance: Percentage of classes attended	(float)
* extracurricular_activities: Participation in extracurricular activities	varchar (Yes, No)
* sleep_hours	Average number of hours of sleep per night	(float)
* tutoring_sessions: Number of tutoring sessions attended per month (int)
* teacher_quality: Quality of the teachers	[varchar (Low, Medium, High)]
* exam_score:	Final exam score	(float)

I execute SQL queries to answer these three questions:

1. Do the number of hours a student studies and participation affect average exam scores?
2. Display the range of hours studied vs. the average exam score
3. Can you rank students according to attendance, hours studied, sleep hours, tutoring sessions, and exam scores so that students with the same exam score are in the same rank?

Findings 
* Students who study more hours and participate in extra-curricular activities have average high exam scores

![exam score vs study hrs](https://github.com/user-attachments/assets/0fb41cd5-d739-45c4-81bb-39f17db239cd)


