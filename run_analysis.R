## 1. Merges the training and the test sets to create one data set. ##
library(reshape2)

filename <- "getdata_dataset.zip"
if (!require("data.table")) {
install.packages("data.table")
}
if (!require("reshape2")) {
install.packages("reshape2")
}
require("data.table")
xt <- read.table("t/xt.txt")
yt <- read.table("t/yt.txt")
subject-t <- read.table("t/subject_t.txt")

xtest <- read.table("test/Xtest.txt")
ytest <- read.table("test/ytest.txt")
subject-test <- read.table("test/subject_test.txt")

#Creating Xdataset and Ydataset#
xdata <- rbind(xt, xtest)
ydata <- rbind(yt, ytest)
subject_data <- rbind(subject_t, subject_test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. ##

ft <- read.table("ft.txt")
media_std_ft <- grep("-(mean|std)\\(\\)", ft[, 2])
x_data <- x_data[, media_std_ft]
names(x_data) <- ft[media_std_ft, 2]

## 3. Uses descriptive activity names to name the activities in the data set. ##

act <- read.table("activity_labels.txt")
y_data[, 1] <- act[y_data[, 1], 2]
names(y_data) <- "activity"

## 4. Appropriately labels the data set with descriptive variable names. ##

names(subject_data) <- "subject"
all_data <- cbind(x_data, y_data, subject_data)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.##

averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:68]))
write.table(DataClean, file = "./DataClean.txt")



