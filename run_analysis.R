run_analysis <- function() {
    #load required libraries
    library(data.table)
    library(dplyr)

    # read test data
    Test_X <- fread("UCI HAR Dataset/test/X_test.txt")
    # read subject indices for test
    Test_sub <- fread("UCI HAR Dataset/test/subject_test.txt")
    # read the acitivities for test
    Test_lbl <- fread("UCI HAR Dataset/test/y_test.txt")
    
    # read the names in features.txt
    features <- fread("UCI HAR Dataset/features.txt")
    #give names to the columns
    noms <- features$V2
    colnames(Test_X) <- noms
    colnames(Test_sub) <- "subject"
    colnames(Test_lbl) <- "Activity"
    # merge the 3 tables for test
    Test <- cbind(Test_sub,Test_lbl,Test_X)
    
    # read Train data
    Train_X <- fread("UCI HAR Dataset/train/X_train.txt")
    # read subject indices for Train
    Train_sub <- fread("UCI HAR Dataset/train/subject_train.txt")
    # read the acitivities for test
    Train_lbl <- fread("UCI HAR Dataset/train/y_train.txt")
    #give names to the columns
    colnames(Train_X) <- noms
    colnames(Train_sub) <- "subject"
    colnames(Train_lbl) <- "Activity"
    # merge the 3 tables for Train
    Train <- cbind(Train_sub,Train_lbl,Train_X)
    
    #Merge Test and Train
    Alldata <- rbind(Train, Test)
    
    #Select column with mean() in name
    Meandata <- subset(Alldata, select = grep("mean[()]", names(Alldata) ))
    #Select columns with std() in name
    Stddata <- subset(Alldata, select = grep("std[()]", names(Alldata) ))
    # Create full data frame
    Mean_Std_data <- cbind(Alldata$subject,Alldata$Activity,Meandata,Stddata)
    colnames(Mean_Std_data)[1]<-"subject"
    colnames(Mean_Std_data)[2]<-"Activity"

    # read Activity table
    Act_Tab <- fread("UCI HAR Dataset/activity_labels.txt")
    
    # replacing activity column by labels
    Res <- mutate(Mean_Std_data, Activity = Act_Tab$V2[Activity])
    # Group observations by activity and subjects
    Res_group <- group_by(Res,Activity,subject)
    
    #Compute mean by activity and subject
    mean_sub_act <- summarise_each(Res_group, funs(mean))
    
    #Write the table in a csv file
    write.csv(mean_sub_act,"tidy_final.csv")
}

