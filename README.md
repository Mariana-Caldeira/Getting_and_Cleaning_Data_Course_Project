README - Getting and Cleaning Data Course Project

Overview

This repository contains files for the Getting and Cleaning Data Course
Project. The goal of the project is to demonstrate the ability to
collect, work with, and clean a dataset, producing a tidy dataset that
can be used for further analysis.

Repository Contents

run_analysis.R: The main R script that processes the data and generates
the final tidy dataset.

tidy_dataset.txt: The output file containing the cleaned dataset.

CodeBook.md: A document describing the dataset, including its variables,
transformations, and summaries.

Dataset Information

The dataset used in this project is the Human Activity Recognition Using
Smartphones Dataset collected from the accelerometers of Samsung Galaxy
S smartphones. The data was obtained from the UCI Machine Learning
Repository.

Steps Performed in run_analysis.R

Merges the training and the test datasets to create one dataset.

Extracts only the measurements on the mean and standard deviation for
each measurement.

Uses descriptive activity names to name the activities in the dataset.

Appropriately labels the dataset with descriptive variable names.

Creates a second, independent tidy dataset with the average of each
variable for each activity and each subject, then writes it to
tidy_dataset.txt.

How to Run the Analysis

Download the dataset from the provided link.

Place the dataset files in your working directory.

Run run_analysis.R in RStudio or using an R console.

The script will generate tidy_dataset.txt as output.

Output

The final output is tidy_dataset.txt, a tidy dataset following the
principles of tidy data:

Each variable forms a column.

Each observation forms a row.

Each type of observational unit forms a table.

Notes

The script assumes that required packages (dplyr, data.table) are
installed.

The dataset should be unzipped and stored in the working directory
before running run_analysis.R.

For further details on variables and transformations, refer to
CodeBook.md.
