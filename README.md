## Steps to execute the exercise  


* Download the data from this link to a folder 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


* Unzip the file to a folder. A folder Named 'UCI HAR Dataset' will be created. Under this folder, two subfolders will be created.  
  
* The R script is using functions that need plyr R package. Be sure plyr is installed.  

* Copy/Paste the content of run_analysis.R into R studio command line. This will create run_analysis function 

* Because the function will return a dataset, Run the function by command like 
  d <- run_analysis()

* Verify class of d by 
   class(d)

* To get a sense of dataset and its contents,  Run commands like:
 
   ** nrow(d)
   ** ncol(d)
   ** summary(d)
   ** colnames(d)
   ** str(d) 
   
  
   
