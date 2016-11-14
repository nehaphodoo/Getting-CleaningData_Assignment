# Getting-CleaningData_Assignment

The code is submitted as part of Peer Graded Assessment for Week 4 in the Getting and Cleaning Data course on Coursera. The code follows below basic steps: <br><br>
1) First patch of code downloads and unzip the dataset package from the website provided in the assignment.<br>
2) Secondly, it reads all the relevant text files to create datasets in R- test 7 train data, subject & activity details as well as features.<br>
3) Thirdly, it adds Activity and Subject columns along with their names and then merge test and train data. <br>
4) As a next step, it extracts the required (mean and standard deviation) columns for each measurement. <br>
5) Next to that, there are some cosmetic changes done to column names (Appropriately labelling the data set- Captital first letters & Removing special characters like "-,()" from col names). <br>
6) Further to that, it converts Subject and Activity into factor variable in order to replace descriptive activity names for the activities in the data set. <br>
7) As a next step, it uses reshape2 package functions- melt and dcast in order to create an independent tidy data set with the average of each variable for each activity and each subject. As an alternative to this, group by and summarize_each function of dplyr package can also be used for the same purpose.<br>
8) Finally, it writes the tidy dataset as a .txt file.
