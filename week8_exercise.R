#Week8Assignment
#Show the details of students whose final_exam_mark is greater than 80%
student_data<- read.csv("C:/Users/syahi/Downloads/student_data(in).csv")
View (student_data)

students_above80 <- student_data[student_data$final_exam_mark > 80, ]
View(students_above80)
print (students_above80)

#Arrange the dataset in ascending order based on course_work_mark
sorted_data <- student_data[order(student_data$coursework_mark),]
View(sorted_data)
print(sorted_data)

#Display only the student name and final_exam_mark attributes from the dataset
task3_data <- student_data[,c("student_name","final_exam_mark")]
View (task3_data)
print (task3_data)

#Specify the number of rows and columns in the dataset.
nrow(student_data)
ncol(student_data)

#explain how to obtain the details of the given dataset using R. Show the dataset details based on the R query you execute.
head(student_data) #displays the first six rows
str(student_data) #displays the structure of the dataset
summary(student_data) #displays descriptive statistics 

#How can you identify and detect outliers in the given dataset? Explain and demonstrate using R
boxplot(student_data$final_exam_mark,
        main="Boxplot")

first_q <- quantile(student_data$final_exam_mark,0.25)
print (first_q)
third_q <- quantile(student_data$final_exam_mark,0.75)
print (third_q)
iqr <- IQR(student_data$final_exam_mark) #IQR = Q3 − Q1
print(iqr)
le <- first_q - 1.5 * iqr #lower extreme
print(le)
ue <- third_q + 1.5 * iqr #upper extreme
print(ue)
outliers <- student_data$final_exam_mark[
  student_data$final_exam_mark < le |
    student_data$final_exam_mark > ue
]
View (outliers)
print (outliers)
boxplot(student_data$final_exam_mark,
        main = "Final Exam Mark Boxplot",
        col = "lightblue")
