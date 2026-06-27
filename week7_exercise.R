#task1
Name <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender <- c("Female", "Male", "Female", "Male", "Female")
Age <- c(22, 23, 21, 24, 22)
Test_Score <- c(85, 78, 92, 65, 88)
Attendance <- c(90, 85, 95, 70, 88)
students <- data.frame(Name, Gender, Age, Test_Score, Attendance=Attendance)
students

#task2
students["Test_Score"]
students$Test_Score
head(students, 3)
students[students$Age > 22, ]
students[students$Gender == "Female" & students$Test_Score > 80, ]

#task3
new_student <- data.frame(
  Name = "Lina",
  Gender = "Male",
  Age = 20,
  Test_Score = 95,
  Attendance = 92
)
students <- rbind(students, new_student)
students

#task4
students_na <- data.frame(
  Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  Age = c(22, NA, 21, 24, 22),
  Test_Score = c(85, 78, NA, 65, 88),
  Attendance = c(90, 85, 95, NA, 88)
)
students_na

is.na(students_na)
colSums(is.na(students_na))

students_na$Age[is.na(students_na$Age)] <- mean(students_na$Age, na.rm = TRUE)

students_na$Test_Score[is.na(students_na$Test_Score)] <- median(students_na$Test_Score, na.rm = TRUE)

students_na$Attendance[is.na(students_na$Attendance)] <- 0
students_na