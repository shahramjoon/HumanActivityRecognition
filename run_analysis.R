run_analysis <- function() {
  
  library(plyr)
  
  setwd ( "c:/temp/UCI HAR Dataset")
  
  # Read Activity labels file 
  
  activity_labels_data <- read.csv ("activity_labels.txt" , sep = " ", header=FALSE)
  
  # Assign  columns names 
  
  colnames(activity_labels_data) <- c("ACTIVITY_ID", "ACTIVITY_NAME")
  
  
  # Read Metrics or Features File
  
  metrics_label_data <- read.csv ("features.txt" , sep = " ", header=FALSE)
  
  
  
  # change directory to test 
  setwd("test")
  
  # Read X_test. txt file that has metrics 
  
  test_data <- read.table("X_test.txt")
  
  # Assign metrics Names to columns 
  colnames(test_data) <- metrics_label_data[,2]
  
  
  #Read Subject file 
  subject_test_data <- read.table ("subject_test.txt")
  
  # Assign column name 
  colnames(subject_test_data) <- c ("SUBJECT_ID")
  
  
  # Read y_test.txt that contasins Activity 
  y_test_data <- read.table ("y_test.txt")
  
  # Assign column name 
  colnames(y_test_data) <- c("ACTIVITY_ID")
  
  # Combine Activity, Subject and rest of metrics together 
  test_data <- cbind ( y_test_data, test_data )
  test_data <- cbind ( subject_test_data, test_data )
  
  
  # Change directory to train 
  
  setwd("../train")
  
  # Read train data
  train_data <- read.table("X_train.txt")
  
  #Asign column names
  colnames(train_data) <- metrics_label_data[,2]
  
  #Read Subject file 
  subject_train_data <- read.table ("subject_train.txt")
  
  #Assign column name to subject_train_data
  colnames(subject_train_data) <- c ("SUBJECT_ID")
  
  #Read Activity File
  y_train_data <- read.table ("y_train.txt")
  
  #Assign column name 
  colnames(y_train_data) <- c("ACTIVITY_ID")
  
  # Combine Activity, Subject and rest of metrics together 
  train_data <- cbind ( y_train_data, train_data )
  train_data <- cbind ( subject_train_data, train_data )
  
  # Combine Train and Test data
  whole_data_set <- rbind ( train_data, test_data)
  
  # Get Activity Name for each Activity_ID in the whole_data_set 
  data_set_ACTIVITY_NAME_RESOLVED = merge(whole_data_set,activity_labels_data, by.x="ACTIVITY_ID", by.y="ACTIVITY_ID", all=TRUE )
  
  
  # column names having 'mean(' or 'std' or 'ACTIVITY' OR SUBJECT part of their names 
  mean_std_column_id <- grep("mean\\(|std|ACTIVITY|SUBJECT" , colnames( data_set_ACTIVITY_NAME_RESOLVED))
  
  #Keep mean and std columns 
  subdata_set <- data_set_ACTIVITY_NAME_RESOLVED[,mean_std_column_id]
  
  
  #get the mean of each metric per  SUBJECT_ID, per ACTIVITY_ID 
  q <- aggregate(subdata_set , by=list(subdata_set$SUBJECT_ID,subdata_set$ACTIVITY_ID), FUN=mean)
  
  #REmove columns 
  q$Group.1 <- NULL
  
  q$Group.2 <- NULL
  
  
  q$Group.3 <- NULL
  
  #Resolve name of Activity
  tidy_dataset = merge(q,activity_labels_data, by.x="ACTIVITY_ID", by.y="ACTIVITY_ID", all=TRUE )
  
  #Remove duplicate column 
  tidy_dataset$ACTIVITY_NAME.x <- NULL 
  
  
  #Add 'AVG' as prefix to metrics
  for ( i in 3:68 ) { names(tidy_dataset)[i] <- sub("^", "AVG_", names(tidy_dataset)[i]) }
  
  names(tidy_dataset)[69] <- 'ACTIVITY_NAME'
  
  
  #return data set
  tidy_dataset
  

  
}