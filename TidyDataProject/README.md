
##Human Activity Recognition Using Smartphones Dataset

Summary by Lena Zuniga as part as the Cleaning Data course 



#Original data source:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

#Processing

This data set is a clean and summarized version of the experiment carried out with a group of 30 volunteers, performing different activities when wearing a smartphone at the waist.

The script run_analysis.R  performs the following actions:

* Reads the data from different files provided in the original dataset.  This script assumes it is located in the same directory as the main folder of the original data.

* Combines two large datasets (test and training) into one

* Cleans up and adds labels to the full dataset, based on the different features measured in the original experiment

* Selects the data columns that contain measurements for means and standard deviations, marked in the original data variables as “std” and “mean”

* Combines this data set with the types of activities performed and the subjects IDs for the experiments

* Re-labels activities to be human readable

* Calculates the means for all variables by subject and activity

* Generates a .txt file with the resulting summarized dataset

END


