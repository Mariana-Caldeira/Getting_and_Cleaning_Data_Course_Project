train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")

# Merge the data
full_data <- rbind(train_data, test_data)

#Extract mean and standard deviation
features <- read.table("UCI HAR Dataset/features.txt")
mean_std_columns <- grep("mean\\(\\)|std\\(\\)", features$V2)

# Subset data
selected_data <- full_data[, mean_std_columns]

#Use descriptive activity names
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_train <- read.table("UCI HAR Dataset/train/y_train.txt")
activity_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# Merge activity data
activities <- rbind(activity_train, activity_test)

# Replace activity numbers with names
activities$V1 <- factor(activities$V1, levels = activity_labels$V1, labels = activity_labels$V2)

#Label dataset with descriptive variable names

colnames(selected_data) <- features[mean_std_columns, 2]
colnames(activities) <- "Activity"

#Create a Tidy Dataset with Averages

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(subject_train, subject_test)

# Merge with selected data
tidy_data <- cbind(subjects, activities, selected_data)
colnames(tidy_data)[1] <- "Subject"

# Compute averages
library(dplyr)
final_tidy_data <- tidy_data %>%
  group_by(Subject, Activity) %>%
  summarise(across(everything(), mean))

# Save the final dataset
write.table(final_tidy_data, "tidy_dataset.txt", row.name=FALSE)


