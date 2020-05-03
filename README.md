# data-cleaning-final-test
Final programming assignment of data cleaning course
Here below is what I have done - steps taken to complete the assignment.
 First of all I have uploaded the dplyr package and set as the working directory the one where I was going to download the files. 
 The files have been downloaded and unzipped into a dedicated directory  
 using the function unzip(zipfile="./dataset.zip",exdir="C:/Users/aless/Documents/data science/ProgAssignment4")
 
 I then read the entire list of files. as the data have been unzipped in a directory clled "UCI HAR Dataset"  
 I have identied from the Readme.text file the files I had to use. in total there were 8 files relevant
 the file "activity labels.txt" describe the 6 activities (walking, laying, etc..= people had to perform
 the file "features.txt" list of all the variables that have been measured or calculated for each observation 
 the files with measurements were the following 
 1)'train/X_train.txt': Training set. each row is an observation of a specific subject
 2) 'train/y_train.txt': Training labels which identied the type of activity performed
 3) train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 
 4) 'test/X_test.txt': Test set.
 5) 'test/y_test.txt': Test labels.
 6) 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

 as step0, I started  reading the files, creating tables for each of the files mentioned above
 I then rename columns of the tables. so it's more clear what are the variables represented (this anticipates what required in STEP 4)
 I then wanted to merged into one table all the training and testing set, so that for each table was complete not only of the measurement but also of the subject Id and the activity id. 
 just for completeness, before merging the tables I have checked if they have same dimension, using NROW() function
 and found for examples that all train tables have 7352 rows
 I then created the completedataset merging with rbind() the trainining and the testing datasets - this was STEP 1

 STEP N. 2 - I need now to extract only the mean and standard deviation for each measurement as requested
 I will create a vector with the first 2 columns (subject_id,activity_id) 
 and all the  columns with the "mean" or the "std" of the measurement. I will use function grep() to identify the columns which have "mean" or "std" in their name
 I then ordered the vector so that when making the extraction I am keeping the right order
 I then extracted only the relevant columns from the completedataset

 STEP N. 3 - Is to uses descriptive activity names to name the activities in the data set.
 I can do this merging the dataset with the ActivityLabels file using the Activity_id as the common field

 STEP N. 4' it has already been done earlier as part of step0

 STEP N. 5 was to create a new tidy dataset
 with the average of each variable for each activity and each subject
 to do this I use the functions group_by and summarize_each so that the function "mean" applies to all the columns
 I then need created the file "tidydataset.txt" with the function write.table
