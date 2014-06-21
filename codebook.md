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
