## The Raw Data

One of the most exciting areas in all of data science right now is wearable computing - 
 Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.
 
 The data use for this study was collected from the accelerometers from the Samsung Galaxy S smartphone:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
 Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 wearing a smartphone (Samsung Galaxy S II) on the waist. 
 Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
 at a constant rate of 50Hz. 
 
 The experiments have been video-recorded to label the data manually. 
 
 The obtained dataset has been randomly partitioned into two sets, where 70% of the 
 volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, 
was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz 
cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

 
## Tidy Data Set 

The Tidy Data Set contains data set for 30 volunteered attended the experiment. 
As each volunteer were involved in 6 activities, there are several metrics gathered for each activity per volunteer. 

Because each activity for the same volunteer repeated more than once, the tidy data set represents the average value of those metrics per volunteer per activity. 

Therefore there are total of 6 * 30 = 180 rows in the tidy data set.


## CodeBook


* SUBJECT_ID : Unique identifier of volunteer. Valid values are 1:30 

* ACTIVITY_ID: ID of Activity. Valid values are 1:6 

* ACTIVITY_NAME: Name of Activity associated with Activity ID. Valid values are 

    1 WALKING
	
    2 WALKING_UPSTAIRS
	
    3 WALKING_DOWNSTAIRS
	
    4 SITTING

	5 STANDING

	6 LAYING

The next 66 variables, are average of 66 metrics gathered per each Subject and Per Activity
	
* "AVG_tBodyAcc-mean()-X"          
* "AVG_tBodyAcc-mean()-Y"          
* "AVG_tBodyAcc-mean()-Z"         
* "AVG_tBodyAcc-std()-X"           
* "AVG_tBodyAcc-std()-Y"           
* "AVG_tBodyAcc-std()-Z"           
* "AVG_tGravityAcc-mean()-X"      
* "AVG_tGravityAcc-mean()-Y"       
* "AVG_tGravityAcc-mean()-Z"       
* "AVG_tGravityAcc-std()-X"        
* "AVG_tGravityAcc-std()-Y"         
* "AVG_tGravityAcc-std()-Z"        
* "AVG_tBodyAccJerk-mean()-X"       
* "AVG_tBodyAccJerk-mean()-Y"      
* "AVG_tBodyAccJerk-mean()-Z"      
* "AVG_tBodyAccJerk-std()-X"       
* "AVG_tBodyAccJerk-std()-Y"        
* "AVG_tBodyAccJerk-std()-Z"       
* "AVG_tBodyGyro-mean()-X"          
* "AVG_tBodyGyro-mean()-Y"         
* "AVG_tBodyGyro-mean()-Z"          
* "AVG_tBodyGyro-std()-X"          
* "AVG_tBodyGyro-std()-Y"           
* "AVG_tBodyGyro-std()-Z"          
* "AVG_tBodyGyroJerk-mean()-X"      
* "AVG_tBodyGyroJerk-mean()-Y"     
* "AVG_tBodyGyroJerk-mean()-Z"      
* "AVG_tBodyGyroJerk-std()-X"      
* "AVG_tBodyGyroJerk-std()-Y"       
* "AVG_tBodyGyroJerk-std()-Z"      
* "AVG_tBodyAccMag-mean()"          
* "AVG_tBodyAccMag-std()"          
* "AVG_tGravityAccMag-mean()"       
* "AVG_tGravityAccMag-std()"       
* "AVG_tBodyAccJerkMag-mean()"      
* "AVG_tBodyAccJerkMag-std()"      
* "AVG_tBodyGyroMag-mean()"         
* "AVG_tBodyGyroMag-std()"         
* "AVG_tBodyGyroJerkMag-mean()"     
* "AVG_tBodyGyroJerkMag-std()"     
* "AVG_fBodyAcc-mean()-X"           
* "AVG_fBodyAcc-mean()-Y"          
* "AVG_fBodyAcc-mean()-Z"           
* "AVG_fBodyAcc-std()-X"           
* "AVG_fBodyAcc-std()-Y"            
* "AVG_fBodyAcc-std()-Z"           
* "AVG_fBodyAccJerk-mean()-X"       
* "AVG_fBodyAccJerk-mean()-Y"      
* "AVG_fBodyAccJerk-mean()-Z"       
* "AVG_fBodyAccJerk-std()-X"       
* "AVG_fBodyAccJerk-std()-Y"        
* "AVG_fBodyAccJerk-std()-Z"       
* "AVG_fBodyGyro-mean()-X"          
* "AVG_fBodyGyro-mean()-Y"         
* "AVG_fBodyGyro-mean()-Z"          
* "AVG_fBodyGyro-std()-X"          
* "AVG_fBodyGyro-std()-Y"           
* "AVG_fBodyGyro-std()-Z"          
* "AVG_fBodyAccMag-mean()"          
* "AVG_fBodyAccMag-std()"          
* "AVG_fBodyBodyAccJerkMag-mean()"  
* "AVG_fBodyBodyAccJerkMag-std()"  
* "AVG_fBodyBodyGyroMag-mean()"     
* "AVG_fBodyBodyGyroMag-std()"     
* "AVG_fBodyBodyGyroJerkMag-mean()" 
* "AVG_fBodyBodyGyroJerkMag-std()" 