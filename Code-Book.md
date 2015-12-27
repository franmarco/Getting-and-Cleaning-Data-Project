This code book summarizes the resulting data fields in DataClean.txt

INSTRUCTIONS:

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

VARIABLES:

First step. xt, yt, x_test, y_test, subject_t and subject_test -> downloaded files.
Second step. x_data, y_data and subject_data merge the datasets.
Third step. Features contains x_data dataset names and I changed some names. 
Forth step. The same with y_data dataset names and I changed some names.
Fifth. Later I merged x_data, y_data, subject_data and all_data in just one big dataset.
The last step. averages_data contains the relevant averages and I stored all in DataClean.txt
