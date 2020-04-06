# Codebook

This codebook is designed to assist the user in understanding the data set supplied and the steps taken to transform it

A full description of the project and dataset is supplied in the below link
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

And the raw data is available here, place this into your working directory
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Then you can run the r script run_analysis which is available in this repository  
This will create a tidy dataset which contains the following

# Identifiers

subject: the identifier of the test subject (one of thirty people)  
activity: the activity they were undertaking at the time

# Features

Columns in the final tidy dataset are the below  
Each has been summarised to average (mean) by subject and activity

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.  

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-mean-X  
tBodyAcc-mean-Y  
tBodyAcc-mean-Z  
tGravityAcc-mean-X  
tGravityAcc-mean-Y  
tGravityAcc-mean-Z  
tBodyAccJerk-mean-X  
tBodyAccJerk-mean-Y  
tBodyAccJerk-mean-Z  
tBodyGyro-mean-X  
tBodyGyro-mean-Y  
tBodyGyro-mean-Z  
tBodyGyroJerk-mean-X  
tBodyGyroJerk-mean-Y  
tBodyGyroJerk-mean-Z  
tBodyAccMag-mean  
tGravityAccMag-mean  
tBodyAccJerkMag-mean  
tBodyGyroMag-mean  
tBodyGyroJerkMag-mean  
fBodyAcc-mean-X  
fBodyAcc-mean-Y  
fBodyAcc-mean-Z  
fBodyAcc-meanFreq-X  
fBodyAcc-meanFreq-Y  
fBodyAcc-meanFreq-Z  
fBodyAccJerk-mean-X  
fBodyAccJerk-mean-Y  
fBodyAccJerk-mean-Z  
fBodyAccJerk-meanFreq-X  
fBodyAccJerk-meanFreq-Y  
fBodyAccJerk-meanFreq-Z  
fBodyGyro-mean-X  
fBodyGyro-mean-Y  
fBodyGyro-mean-Z  
fBodyGyro-meanFreq-X  
fBodyGyro-meanFreq-Y  
fBodyGyro-meanFreq-Z  
fBodyAccMag-mean  
fBodyAccMag-meanFreq  
fBodyBodyAccJerkMag-mean  
fBodyBodyAccJerkMag-meanFreq  
fBodyBodyGyroMag-mean  
fBodyBodyGyroMag-meanFreq  
fBodyBodyGyroJerkMag-mean  
fBodyBodyGyroJerkMag-meanFreq  
angle(tBodyAccMean,gravity)  
angle(tBodyAccJerkMean),gravityMean)  
angle(tBodyGyroMean,gravityMean)  
angle(tBodyGyroJerkMean,gravityMean)  
angle(X,gravityMean)  
angle(Y,gravityMean)  
angle(Z,gravityMean)  
tBodyAcc-std-X  
tBodyAcc-std-Y  
tBodyAcc-std-Z  
tGravityAcc-std-X  
tGravityAcc-std-Y  
tGravityAcc-std-Z  
tBodyAccJerk-std-X  
tBodyAccJerk-std-Y  
tBodyAccJerk-std-Z  
tBodyGyro-std-X  
tBodyGyro-std-Y  
tBodyGyro-std-Z  
tBodyGyroJerk-std-X  
tBodyGyroJerk-std-Y  
tBodyGyroJerk-std-Z  
tBodyAccMag-std  
tGravityAccMag-std  
tBodyAccJerkMag-std  
tBodyGyroMag-std  
tBodyGyroJerkMag-std  
fBodyAcc-std-X  
fBodyAcc-std-Y  
fBodyAcc-std-Z  
fBodyAccJerk-std-X  
fBodyAccJerk-std-Y  
fBodyAccJerk-std-Z  
fBodyGyro-std-X  
fBodyGyro-std-Y  
fBodyGyro-std-Z  
fBodyAccMag-std  
fBodyBodyAccJerkMag-std  
fBodyBodyGyroMag-std  
fBodyBodyGyroJerkMag-std  



