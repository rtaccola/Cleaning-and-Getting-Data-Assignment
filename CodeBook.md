# Code Book
This code book describes the variables, data, transformations and any work performed to clean up the data sets included in the Dataset.zip file which contains data collected from the accelerometers from the Samsung Galaxy S smartphone. From the analysis performed was resulted the file TidyDataSet.txt, included in this repository.

## Variables

**subjectID**

_Its range is from 1 to 30. Identifies the subject who performed the activity for each window sample._

**activityDescription   
activityId**

_Description and identification of the activities._

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

_Variables based on the subjects and activities performed by each subject:_

**tBodyAcc-mean()-X          
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z          
tBodyAcc-std()-X           
tBodyAcc-std()-Y           
tBodyAcc-std()-Z           
tGravityAcc-mean()-X       
tGravityAcc-mean()-Y       
tGravityAcc-mean()-Z       
tGravityAcc-std()-X        
tGravityAcc-std()-Y        
tGravityAcc-std()-Z        
tBodyAccJerk-mean()-X      
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z      
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y       
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X         
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z         
tBodyGyro-std()-X          
tBodyGyro-std()-Y          
tBodyGyro-std()-Z          
tBodyGyroJerk-mean()-X     
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z     
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y      
tBodyGyroJerk-std()-Z      
tBodyAccMag-mean()         
tBodyAccMag-std()          
tGravityAccMag-mean()      
tGravityAccMag-std()       
tBodyAccJerkMag-mean()     
tBodyAccJerkMag-std()      
tBodyGyroMag-mean()        
tBodyGyroMag-std()         
tBodyGyroJerkMag-mean()    
tBodyGyroJerkMag-std()     
fBodyAcc-mean()-X          
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z          
fBodyAcc-std()-X           
fBodyAcc-std()-Y           
fBodyAcc-std()-Z           
fBodyAccJerk-mean()-X      
fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z      
fBodyAccJerk-std()-X       
fBodyAccJerk-std()-Y       
fBodyAccJerk-std()-Z       
fBodyGyro-mean()-X         
fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z         
fBodyGyro-std()-X          
fBodyGyro-std()-Y          
fBodyGyro-std()-Z          
fBodyAccMag-mean()         
fBodyAccMag-std()          
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()    
fBodyBodyGyroMag-std()     
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()**

## Script
* It first downloads the DataSet.zip file into the “Data” directory, which is created if it doesn’t exist. 
* Unzip the data set and reads the train, test, features and activity_labels into data frames. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* Merges all 3 data sets in one
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
