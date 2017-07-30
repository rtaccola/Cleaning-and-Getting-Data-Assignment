############### Getting and Cleaning Data Assignment ###############
####################################################################

## Creates a "Data" folder if doesn't exist and download the file Dataset.zip
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/Dataset.zip")

## Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## Reads train and test sets
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Reads features and activity_labels
features <- read.table('./data/UCI HAR Dataset/features.txt')
activity_labels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

## Merges the training and the test sets to create one data set.
merged_x <- rbind(x_train, x_test)
merged_y <- rbind(y_train, y_test)
merged_subject <- rbind(subject_train, subject_test)

## Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std_features <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
merged_x <- merged_x[,mean_std_features[,1]]

## Uses descriptive activity names to name the activities in the data set
colnames(merged_y) <-"activityId"
merged_y$activityDescription <- factor(merged_y$activityId, labels = as.character(activity_labels[,2]))

## Appropriately labels the data set with descriptive variable names.
colnames(merged_x) <- mean_std_features$V2
colnames(merged_subject) <- "subjectID"

## Merges all 3 data sets in one
merged_total <- cbind(merged_subject, merged_y, merged_x)

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
merged_tidy <- aggregate(.~subjectID+activityDescription, merged_total, mean)
write.table(merged_tidy, "./data/TidyDataSet.txt", row.name=FALSE)


