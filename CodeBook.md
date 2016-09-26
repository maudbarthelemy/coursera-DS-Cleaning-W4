CODEBOOK 
Description of tidy_final.csv content

Activity (character)
	Activity Name
	Possible values
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

subject (integer)
	subject who performed the activity for each window sample. 
	Its range is from 1 to 30. 

All variables below are numeric.
The description of the measurements that gave the variable values
are explained below.
Prefix "t" means time domain signal.
Prefix "f" means frequency domain.

Mean and Std values are done by Activity and by subject.

Mean of the Body acceleration in the 3 directions (X,Y,Z):
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z

Mean of the gravity acceleration signals in the 3 directions (X,Y,Z):
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z

Mean of the body acceleration Jerk signal in the 3 directions (X,Y,Z):
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z

Mean of the gyroscope 3-axial raw signals in the 3 directions (X,Y,Z):
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z

Mean of the gyroscope 3-axial Jerk signal in the 3 directions (X,Y,Z):
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z

Mean of magnitude of different signal using the Euclidean norm:
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()

Mean of the Body acceleration in the 3 directions (X,Y,Z) (freq. domain):
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z

Mean of the Body acceleration Jerk signal in the 3 directions (X,Y,Z)
(freq. domain):
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z

Mean of the Gyro signal in the 3 directions (X,Y,Z) (freq. domain):
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z

Magnitude of different signal using the Euclidean norm (freq. domain):
fBodyAccMag-mean()
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean()

Standard Deviation(std) of the Body acceleration in the 3 directions (X,Y,Z):
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z

Std of the gravity acceleration signals in the 3 directions (X,Y,Z):
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z

Std of the body acceleration Jerk signal in the 3 directions (X,Y,Z):
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z

Std of the Gyro signal in the 3 directions (X,Y,Z):
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z

Std of the Gyro Jerk signal in the 3 directions (X,Y,Z):
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z

Std of the magnitude of different signal using the Euclidean norm :
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()

Std of the Body acceleration in the 3 directions (X,Y,Z) (freq. domain):
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z

Std of the body acceleration Jerk signal in the 3 directions (X,Y,Z)
(freq. domain):
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z

Std of the Gyro signal in the 3 directions (X,Y,Z) (freq. domain):
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z

Std of the Magnitude for the different signals in freq. domain:
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()

Detailed description of the variables used to compute the mean and std:
====================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

Analysis done to the variables:
===============================
For each activity and for each subject the mean and the standard deviation 
have been computed.
Example: fist row gives the mean and Std for the LAYING activity and the 
subject number 1.
The "run_analysis.r" script performs the analysis on the data. 
The data can be downloaded following the instructions in the Readme.md.
The final data set is saved in a file named "tidy_final.csv"
The data is also saved in txt format as "tidy_final.txt".
