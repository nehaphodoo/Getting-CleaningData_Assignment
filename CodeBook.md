The code describes the variables as present in the tidy data set. It also tells if any transformations/work has been performed to clean up. If no description is provided, that means the field is taken as such from the file.

1) SubjectLabel - factor variable, contains values ranging from 1 to 30. Basically the field telling which subject's activity information is provided.

2) ActivityLabel - factor variable, contains values from the set { 1-WALKING, 2-WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING }. Basically the field tells for which activity the information is provided and is taken directly from the activity_labels.txt file.

For all the below fields, the data is taken after appending train and test file,formatting the variable name (removing special characters, removing any space and upper casing separate words) and then taking the average (per variable) for each activity and each subject:

3) tBodyAccMeanX <br> 
4) tBodyAccMeanY <br>
5) tBodyAccMeanZ <br>
6) tBodyAccStdX <br>
7) tBodyAccStdY <br>
8) tBodyAccStdZ <br>
9) tGravityAccMeanX <br>
10) tGravityAccMeanY <br>
11) tGravityAccMeanZ <br>
12) tGravityAccStdX <br>
13) tGravityAccStdY <br>
14) tGravityAccStdZ <br>
15) tBodyAccJerkMeanX <br>
16) tBodyAccJerkMeanY <br>
17) tBodyAccJerkMeanZ <br>
18) tBodyAccJerkStdX <br>
19) tBodyAccJerkStdY <br>
20) tBodyAccJerkStdZ <br>
21) tBodyGyroMeanX <br>
22) tBodyGyroMeanY <br>
23) tBodyGyroMeanZ <br>
24) tBodyGyroStdX <br>
25) tBodyGyroStdY <br>
26) tBodyGyroStdZ <br>
27) tBodyGyroJerkMeanX <br>
28) tBodyGyroJerkMeanY <br>
29) tBodyGyroJerkMeanZ <br>
30) tBodyGyroJerkStdX <br>
31) tBodyGyroJerkStdY <br>
32) tBodyGyroJerkStdZ <br>
33) tBodyAccMagMean <br>
34) tBodyAccMagStd <br>
35) tGravityAccMagMean <br>
36) tGravityAccMagStd <br>
37) tBodyAccJerkMagMean <br>
38) tBodyAccJerkMagStd <br>
39) tBodyGyroMagMean <br>
40) tBodyGyroMagStd <br>
41) tBodyGyroJerkMagMean <br>
42) tBodyGyroJerkMagStd <br>
43) fBodyAccMeanX <br>
44) fBodyAccMeanY <br>
45) fBodyAccMeanZ <br>
46) fBodyAccStdX <br>
47) fBodyAccStdY <br>
48) fBodyAccStdZ <br>
49) fBodyAccJerkMeanX <br>
50) fBodyAccJerkMeanY <br>
51) fBodyAccJerkMeanZ <br>
52) fBodyAccJerkStdX <br>
53) fBodyAccJerkStdY <br>
54) fBodyAccJerkStdZ <br>
55) fBodyGyroMeanX <br>
56) fBodyGyroMeanY <br>
57) fBodyGyroMeanZ <br>
58) fBodyGyroStdX <br>
59) fBodyGyroStdY <br>
60) fBodyGyroStdZ <br>
61) fBodyAccMagMean <br>
62) fBodyAccMagStd <br>
63) fBodyBodyAccJerkMagMean <br>
64) fBodyBodyAccJerkMagStd <br>
65) fBodyBodyGyroMagMean <br>
66) fBodyBodyGyroMagStd <br>
67) fBodyBodyGyroJerkMagMean <br>
68) fBodyBodyGyroJerkMagStd <br>
