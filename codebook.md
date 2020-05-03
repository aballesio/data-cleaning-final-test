The dataset contains 180 rows and 82 columns. 
Each row relates to a subject and one specific activity and provides the average value, by subject and activity group, only of the mean and the Std deviation of the variables (measured or calculated ) in the orginal data set.

Column description

First column is The subject_id column which is numbered sequentially from 1 to 30 and refer to the subject performing the activity.

The second column is the activity_type column has 6 types as listed below.
1.	WALKING
2.	WALKING_UPSTAIRS
3.	WALKING_DOWNSTAIRS
4.	SITTING
5.	STANDING
6.	LAYING

The third columm is Activity_id is the numerical id (integer from 1 to 6= of activity type).

The other 79 columns provide athe mean values of the following variables (averaged based on activity and subject) 
1.	"tBodyAcc-mean()-X"          
2.	 "tBodyAcc-mean()-Y"        
3.	   "tBodyAcc-mean()-Z"              
4.	 "tBodyAcc-std()-X"        
5.	   "tBodyAcc-std()-Y"         
6.	   "tBodyAcc-std()-Z"     
7.	"tGravityAcc-mean()-X"       
8.	 "tGravityAcc-mean()-Y"      
9.	  "tGravityAcc-mean()-Z"           
10.	"tGravityAcc-std()-X"       
11.	 "tGravityAcc-std()-Y"       
12.	      "tGravityAcc-std()-Z"            
13.	"tBodyAccJerk-mean()-X"       
14.	    "tBodyAccJerk-mean()-Y"        
15.	   "tBodyAccJerk-mean()-Z"          
16.	"tBodyAccJerk-std()-X"        
17.	   "tBodyAccJerk-std()-Y"      
18.	     "tBodyAccJerk-std()-Z"           
19. "tBodyGyro-mean()-X"     
20.	         "tBodyGyro-mean()-Y"        
21.	      "tBodyGyro-mean()-Z"             
22.	"tBodyGyro-std()-X"           
23.	    "tBodyGyro-std()-Y"               
24.	"tBodyGyro-std()-Z"              
25.	[28] "tBodyGyroJerk-mean()-X"        
26.	  "tBodyGyroJerk-mean()-Y"       
27.	   "tBodyGyroJerk-mean()-Z"         
28.	[31] "tBodyGyroJerk-std()-X"      
29.	     "tBodyGyroJerk-std()-Y"      
30.	     "tBodyGyroJerk-std()-Z"          
31.	[34] "tBodyAccMag-mean()"          
32.	    "tBodyAccMag-std()"             
33.	  "tGravityAccMag-mean()"          
34.	[37] "tGravityAccMag-std()"         
35.	   "tBodyAccJerkMag-mean()"         
36.	 "tBodyAccJerkMag-std()"          
37.	[40] "tBodyGyroMag-mean()"          
38.	   "tBodyGyroMag-std()"         
39.	     "tBodyGyroJerkMag-mean()"        
40.	[43] "tBodyGyroJerkMag-std()"     
41.	     "fBodyAcc-mean()-X"         
42.	      "fBodyAcc-mean()-Y"              
43.	[46] "fBodyAcc-mean()-Z"           
44.	    "fBodyAcc-std()-X"             
45.	   "fBodyAcc-std()-Y"               
46.	[49] "fBodyAcc-std()-Z"             
47.	   "fBodyAcc-meanFreq()-X"          
48.	 "fBodyAcc-meanFreq()-Y"          
49.	[52] "fBodyAcc-meanFreq()-Z"        
50.	   "fBodyAccJerk-mean()-X"        
"fBodyAccJerk-mean()-Y"          
52.	"fBodyAccJerk-mean()-Z"      
53.	     "fBodyAccJerk-std()-X"       
54.	     "fBodyAccJerk-std()-Y"           
55.	"fBodyAccJerk-std()-Z"         
56.	   "fBodyAccJerk-meanFreq()-X"   
57.	    "fBodyAccJerk-meanFreq()-Y"      
58.	"fBodyAccJerk-meanFreq()-Z"    
59.	   "fBodyGyro-mean()-X"             
60.	 "fBodyGyro-mean()-Y"             
61.	"fBodyGyro-mean()-Z"           
62.	   "fBodyGyro-std()-X"             
63.	  "fBodyGyro-std()-Y"              
64.	"fBodyGyro-std()-Z"             
65.	  "fBodyGyro-meanFreq()-X"        
66.	  "fBodyGyro-meanFreq()-Y"         
67.	"fBodyGyro-meanFreq()-Z"      
68.	    "fBodyAccMag-mean()"             
69.	 "fBodyAccMag-std()"              
70.	"fBodyAccMag-meanFreq()"      
71.	    "fBodyBodyAccJerkMag-mean()"    
72.	  "fBodyBodyAccJerkMag-std()"      
73.	"fBodyBodyAccJerkMag-meanFreq()"
74.	  "fBodyBodyGyroMag-mean()"       
75.	  "fBodyBodyGyroMag-std()"         
76.	"fBodyBodyGyroMag-meanFreq()" 
77.	    "fBodyBodyGyroJerkMag-mean()"  
78.	   "fBodyBodyGyroJerkMag-std()"     
79.	"fBodyBodyGyroJerkMag-meanFreq()"

variable units
Subject_id and activity_id are  integer type. 
Activity variable is factor type. 
All the other variables are numeric type.
