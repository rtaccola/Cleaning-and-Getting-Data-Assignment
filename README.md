# Cleaning and Getting Data - Course Project

This is the final assignment of the course Getting and Cleaning Data - Course Project.
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.  For this final assignment was collected data from the accelerometers from the Samsung Galaxy S smartphone and performed analysis to obtain a tidy data set with the average of each variable for each activity and each subject.
More information and full description of the original data collected is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files

* **TidyDataSet.txt** - A tidy data set resulted from transformations of the original data.
* **run_analysis.R** - Script that downloads the DataSet.zip file that contains data sets and perform a series of transformations to these data sets which result in tidy data set. A full description of the script can be found in the CodeBook.mb file in this same repository.
* **README.md** - explains the analysis here performed.
* **CodeBook.md** - a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.

The script does the following:

* Downloads the Dataset.zip file into the "Data" directory, which is created if doesn't exist.
* Reads train, test, features and activity_labels sets.
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* Merges all 3 data sets (x, y and subject) in one.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
