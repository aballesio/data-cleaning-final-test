# I set as working directory, the directory where I am going to download the files 
setwd("C:/Users/aless/Documents/data science/ProgAssignment4")
# first step is to download the data
url <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile= "./dataset.zip")
#then I need to unzip the data 
unzip(zipfile="./dataset.zip",exdir="C:/Users/aless/Documents/data science/ProgAssignment4")
# I find that data have been unzipped in a directory clled "UCI HAR Dataset"
# I then read the entire list of files - I set recursive =TRUE in order to see files in the subdirectories
# 
list.files("./UCI HAR Dataset",recursive= TRUE)
#
# from the Readme.text file it tells me which are files to be taken.
# the file "activity labels.txt" describe the 6 activities people had to perform
# the file "features.txt" list of all the variables that have been measured or calculated for each observation
# the files to be used are the files 
# 1)'train/X_train.txt': Training set.
# 2) 'train/y_train.txt': Training labels. this means the type of activity performed
# 3) 'test/X_test.txt': Test set.
# 4) 'test/y_test.txt': Test labels.
# 5) 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
# 6) 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
# I start then reading the files
xtrain <- read.table(file.path("./UCI HAR Dataset","train", "X_train.txt"),header = FALSE)
ytrain <- read.table(file.path("./UCI HAR Dataset","train", "Y_train.txt"),header = FALSE)
subject_train <- read.table(file.path("./UCI HAR Dataset","train", "subject_train.txt"),header = FALSE) 
xtest <- read.table(file.path("./UCI HAR Dataset","test", "X_test.txt"),header = FALSE)
ytest <- read.table(file.path("./UCI HAR Dataset","test", "Y_test.txt"),header = FALSE)
subject_test <- read.table(file.path("./UCI HAR Dataset","test", "subject_test.txt"),header = FALSE) 
features <- read.table("./UCI HAR Dataset/features.txt",header = FALSE)
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)

# after having looked at the different tables, using print () function, 
# I then rename columns of the tables so it's more clear what are the variables represented (this anticipates what required in STEP 4)
colnames(activityLabels) <- c("activity_id","activity_type")
colnames(subject_test) <- c("subject_id")
colnames(subject_train) <- c("subject_id")
colnames(ytest) <- c("activity_id")
colnames(ytrain) <- c("activity_id")
colnames(xtrain) = features [,2]
colnames(xtest)= features [,2]
# before merging them I have checked if they have same dimension, using NROW() function
# NROW(xtrain),etc... all train tables have 7352 rows
train <- cbind(subject_train,ytrain,xtrain)
test <- cbind(subject_test,ytest,xtest)
completedataset <- rbind(train,test) 
# STEP N. 2 - I need now to extract only the mean and standard deviation for each measurement as requested
# I will create a vector with the first 2 columns (subject_id,activity_id) 
# and all the  columns with the "mean" or the "std" of the measurement. I will use function grep() to identify the columns which have "mean" or "std" in their name
mean_std_selection <- c(1,2,grep("mean",colnames(completedataset)),grep("std",colnames(completedataset)))
# I then order the vector so that when making the extraction I am keeping the right order
mean_std_selection <- mean_std_selection[order(mean_std_selection)]
# I then extract only the relevant columns from the completedataset
mean_std_dataset <- completedataset[,mean_std_selection]
#
# STEP N. 3 - Is to uses descriptive activity names to name the activities in the data set.
# I can do this merging the dataset with the ActivityLabels file using the Activity_id as the common field
mean_std_descriptive <- merge(mean_std_dataset,activityLabels, by= activity_id, all= TRUE)
# STEP N. 4' it has already been done earlier 
# STEP N. 5 is to create a new tidy dataset
# with the average of each variable for each activity and each subject
# to do this I use the functions group_by and summarize_each so that the function "mean" applies to all the columns
tidydataset <- mean_std_descriptive %>% group_by(subject_id,activity_type) %>% summarize_each(funs=mean, na.rm = TRUE)
