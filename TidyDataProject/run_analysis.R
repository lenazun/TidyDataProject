


#read data from different files

test <- read.table("test/X_test.txt")
subtest <- read.table("test/subject_test.txt")
typetest <- read.table("test/Y_test.txt")
train <- read.table("train/X_train.txt")
subtrain <- read.table("train/subject_train.txt")
typetrain <- read.table("train/Y_train.txt")
features <- read.table("features.txt")
 
#combine both data sets into one

fullset <- rbind(test, train)

#clean up and add labels to the full dataset
features$V2 <- gsub("[^[:alnum:]]","", features$V2)
names(fullset) <- features$V2

#subset the data to columns only for means and standard deviations
sub <- fullset[, grep("mean|std", features$V2, value= TRUE)]

#combine the test types with test and train data sets

type <- rbind(typetest, typetrain)
sub <- cbind (type, sub)
colnames(sub)[1] <- "testtype"

#combine the subject numbers with test and train data sets

subjects <- rbind(subtest, subtrain)
sub <- cbind (subjects, sub)
colnames(sub)[1] <- "subject"

#re-labeling the activity types to readable format

sub$testtype[sub$testtype==1] <- "walking"
sub$testtype[sub$testtype==2] <- "walking upstairs"
sub$testtype[sub$testtype==3] <- "walking downstairs"
sub$testtype[sub$testtype==4] <- "sitting"
sub$testtype[sub$testtype==5] <- "standing"
sub$testtype[sub$testtype==6] <- "laying"

#This results in the first tidy data set.
tidyset1 <- sub

# Calculate the means of all variables by subject and activity
sub2 <- aggregate(sub[,3:81], by =list(sub[,1], sub[,2]), FUN = mean)
colnames(sub2)[1:2] <- c("subject", "activity")

#This results in the second tidy data set.

tidyset2 <- sub2

#Save the second data set as a tab delimited text file
write.table(tidyset2, "tidyset2.txt", sep="\t")





