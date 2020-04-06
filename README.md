# Data preparation for UCI HAR activity recognition

This repository contains

- README: summary of dataset supplied and process to follow
- codebook: description of the data used, outputs and process to follow
- r_analysis script: r script to download and transform the dataset for use
- tidy dataset: final cleaned dataset for further use

# Description of dataset supplied

Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

This data has been captured and made available for public download. The files in this repository apply a level of cleaning and transformation so that this data is easier to use than it was when initially supplied.

# Dataset definitions are supplied in the codebook

# Steps to follow to for run_analysis script

a. Download the dataset
1. Load the tidyverse package and bring the core files into r environment
2. Combine the test and train datasets

3. Tidy the dataset for easier use
3a. Assign the activity labels to be descriptive and not code based
3b. Join those labels onto the y_file
3c. Use the features file to provide the column names for x_train
3d. Gather only columns which refer to the mean or standard deviation (std)
3e. Drop () characters to make columns clearer

4. Join labels into main dataset
5. Produce summarised tidy dataset

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
