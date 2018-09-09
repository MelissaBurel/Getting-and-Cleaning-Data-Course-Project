library(dplyr)

##Download zip file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="./data/sg_data.zip")

##unzip file
y<-unzip("./data/sg_data.zip", files = NULL, list = FALSE, overwrite = TRUE,
      junkpaths = FALSE, exdir = ".", unzip = "internal",
      setTimes = FALSE)

##Read data sets into R
testfeatures<-read.table("./UCI Har Dataset/test/X_test.txt")
testactivity<-read.table("./UCI Har Dataset/test/y_test.txt")
testsubject<-read.table("./UCI Har Dataset/test/subject_test.txt")

trainfeatures<-read.table("./UCI Har Dataset/train/X_train.txt")
trainactivity<-read.table("./UCI Har Dataset/train/y_train.txt")
trainsubject<-read.table("./UCI Har Dataset/train/subject_train.txt")


##read feature names into R
feature_labels<-read.table("./UCI Har Dataset/features.txt")

##read activity names into R
activity_labels<-read.table("./UCI Har Dataset/activity_labels.txt")

##Merge the data sets by rows
features_data<-rbind(testfeatures, trainfeatures)
activity_data<-rbind(testactivity,trainactivity)
subject_data<-rbind(testsubject, trainsubject)


##Add column names to the data sets
colnames(subject_data)<-c("subject")
colnames(activity_data)<-c("activity")
colnames(features_data)<-feature_labels$V2


##Combine all the data sets by columns
all_data1<-cbind(subject_data, activity_data)
all_data2<-cbind(features_data, all_data1)


# Filter to keep mean, standard deviation, subject, and acitivty
mean_std<-feature_labels$V2[grep("mean\\(\\)|std\\(\\)", feature_labels$V2)]
chosen<-c(as.character(mean_std), "subject", "activity")
all_data3<-subset(all_data2, select=chosen)

##Add descriptive Activity names- factorize the levels
desc_act=factor(all_data3$activity)
levels(desc_act)=activity_labels[,2]
all_data3$activity<-desc_act

##Add clear feature labels
names(all_data3)<-gsub("^t", "Time", names(all_data3))
names(all_data3)<-gsub("^f", "Frequency", names(all_data3))
names(all_data3)<-gsub("Acc", "Accelerometer", names(all_data3))
names(all_data3)<-gsub("Gyro", "Gyroscope", names(all_data3))
names(all_data3)<-gsub("Mag", "Magnitude", names(all_data3))
names(all_data3)<-gsub("BodyBody", "Body", names(all_data3))
names(all_data3) <- gsub("mean", "Mean", names(all_data3))
names(all_data3) <- gsub("std", "StandardDeviation", names(all_data3))

##From the data set in the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
all_data4<-aggregate(. ~subject + activity, all_data3, mean)
all_data4<-all_data4[order(all_data4$subject,all_data4$activity),]

#write the new data set
write.table(all_data4, file = "tidydata.txt",row.name=FALSE)
