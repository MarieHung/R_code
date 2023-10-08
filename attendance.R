#1.import the sheet 10.26 (回覆).xlsx" into R as an object dune2 (use any way which works for you)

install.packages("readxl")
install.packages('xlsx')
library(readxl)
library(openxlsx)
attend <- read_excel("D:\\Pathway.xlsx", sheet = 1)

grade <- read_excel("D:\\pathway.xlsx",sheet = 1)

#just check
print(attend$`Student ID`) 
print(grade$ID) 

#insure i would not changed anything wrong
attend_student_list <- attend$`Student ID`
StudentList <- grade$ID

# Don't attend

DontAttendID <-setdiff(StudentList,attend_student_list)
DontAttendID

df <- data.frame (DontAttendID )

print(df)



# Don't attend name
#late
#Time <-attend$`時間戳記`


#abs=setdiff(StudentList,attend_student_list)
#count Zonzi survey

#write.csv(abs,"D:\\研究所資料\\ET\\abs.csv")

#write.xlsx(grade,'2023-03-01T1552_Grades.xlsx', sheetName = '1',


#write.xlsx()


