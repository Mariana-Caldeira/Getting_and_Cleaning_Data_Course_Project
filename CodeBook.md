\# Code Book for Getting and Cleaning Data Course Project

\## Overview This code book describes the variables, data
transformations, and summaries used in the tidy dataset produced for the
Getting and Cleaning Data Course Project.

\## Source Data The dataset used in this project is derived from the
Human Activity Recognition Using Smartphones Dataset, collected from the
accelerometers of the Samsung Galaxy S smartphone.

\## Variables in the Tidy Dataset The tidy dataset contains the
following variables:

\- \*\*subject\*\*: Identifier for the participant (1-30). -
\*\*activity\*\*: The activity performed (e.g., WALKING,
WALKING_UPSTAIRS, SITTING, etc.). - \*\*feature variables\*\*: The
dataset contains measurements related to mean and standard deviation of
different sensor signals from the smartphone accelerometer and
gyroscope. These features are summarized as the average value for each
subject-activity pair.

\## Data Transformations 1. Merging the training and test datasets to
create one dataset. 2. Extracting only the measurements on the mean and
standard deviation for each measurement. 3. Using descriptive activity
names to label the activities in the dataset. 4. Appropriately labeling
the dataset with descriptive variable names. 5. Creating a second,
independent tidy dataset with the average of each variable for each
activity and each subject.

\## Activity Labels The dataset includes six activities performed by
each subject: 1. WALKING 2. WALKING_UPSTAIRS 3. WALKING_DOWNSTAIRS 4.
SITTING 5. STANDING 6. LAYING

\## Final Output The final tidy dataset consists of the average of each
measurement grouped by subject and activity. This dataset is written as
\`tidy_dataset.txt\` using \`write.table()\` with \`row.name=FALSE\`.

\## Notes - All variable names are written in \`camelCase\` for
readability. - The dataset adheres to tidy data principles, where each
variable forms a column, each observation forms a row, and each type of
observational unit forms a table.

This code book serves as documentation for understanding the structure
and transformations applied to the dataset.
