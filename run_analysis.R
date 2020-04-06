
## Packages required

library(tidyverse)


# 1. Load the core files --------------------------------------------------



## Load core files

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

features <- read.table("./UCI HAR Dataset/features.txt")

## Load training files

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Load test files

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")


# 2. Combine test and train datasets --------------------------------------

# combine train & test

x_file <- rbind(x_train, x_test)

y_file <- rbind(y_train, y_test)

subject_file <- rbind(subject_train, subject_test)



# 3. Tidy the dataset -----------------------------------------------------

## Generate descriptive labels for activities

activity_labels_02 <- activity_labels %>%
  transmute(
            id = as.character(V1),
            activity = V2
            )

## Join activity labels into dataset

y_file_02 <- y_file %>%
  transmute(id = as.character(V1)) %>%
  left_join(activity_labels_02, by = "id") %>%
  transmute(activity)

## Apply definition to subject column

subject_file_02 <- subject_file %>%
  transmute(subject = V1)

## Update column names using features

colnames(x_file) <- features$V2

## Restrict to just the columns which contain mean and standard deviation

x_file_02 <- x_file[ , grepl( "mean|std" , names( x_file ) ) ]

## Drop the superfluous ()

names(x_file_02) <- gsub( "()",  "", names(x_file_02), fixed = TRUE)


# 4. Combine for final full dataset ---------------------------------------


## Join the x_file with the labels

full_set_01 <- cbind(subject_file_02, y_file_02, x_file_02)



# 5. Generate tidy summarised dataset -------------------------------------


## Create a summarised version by subject and activity for all variables

tidy_set <- full_set_01 %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
