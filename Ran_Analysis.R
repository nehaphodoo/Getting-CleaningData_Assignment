# Downloading and Unzipping the datasets
filename <- "Assignment_Data.zip"
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Read the required tables
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
Subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
Subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Add Activity and Subject column with names and merge test and train
names(X_test) <- features$V2; names(X_train) <- features$V2
names(Y_test) <- "ActivityLabel"; names(Y_train) <- "ActivityLabel"
names(Subject_test) <- "SubjectLabel"; names(Subject_train) <- "SubjectLabel"
X_test <- cbind(X_test, Y_test, Subject_test); X_train <- cbind(X_train, Y_train, Subject_train)

X_Total_Data <- rbind(X_train,X_test)

# Extracting mean and standard deviation for each measurement
X_Mean_Std<- X_Total_Data[,c("ActivityLabel", "SubjectLabel", grep("\\bmean()\\b|std()", names(X_Total_Data), value=TRUE))]

# Appropriately labelling the data set- Captital first letters & Removing special characters like "-,()" from col names
names(X_Mean_Std) <- gsub("-|\\(|\\)", "", names(X_Mean_Std))
names(X_Mean_Std) <- gsub("mean", "Mean", names(X_Mean_Std))
names(X_Mean_Std) <- gsub("std", "Std", names(X_Mean_Std))

# Converting Subject and Activity into factor variable
X_Mean_Std$SubjectLabel <- factor(X_Mean_Std$SubjectLabel)
X_Mean_Std$ActivityLabel <- factor(X_Mean_Std$ActivityLabel, levels = activity_labels[,1], labels = activity_labels[,2])

# Using melt and dcast to reshape dataset
library(reshape2)
X_GroupBy_Subject_Activity <- melt(X_Mean_Std, id=c("SubjectLabel", "ActivityLabel"))
X_Tidy_Data <- dcast(X_GroupBy_Subject_Activity, SubjectLabel+ActivityLabel ~ variable, mean)

# Alternate way to do the same using dplyr package
# library(dplyr)
# X_GroupBy_Subject_Activity <- group_by(X_Mean_Std,SubjectLabel,ActivityLabel)
# X_Tidy_Data <- summarise_each(X_GroupBy_Subject_Activity, funs(mean))

write.table(X_Tidy_Data, "UCI HAR Dataset/X_Tidy_Data.txt", row.name=FALSE)


