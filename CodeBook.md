# Code Book for the final project for Getting and Cleaning Data
This code book relates to the tidydata.txt in this repo. It provides a description of the variables used and the methods used to manipulate the data. 
The background information about the data set can be found in the read.me file
Data

The data for this code book is located in this repository and is named 'tidydata.txt'

Variables

## Subject Variables
* The 'subject' variables are a set of integers from 1-30 that indicate the subject (person) who performed the activity for each window sample.

## Activity Variables
The 'activity' represesnts the participant was engaged in at the time of measurement
* 'WALKING' (value '1')- When the subject was walking
* 'WALKING_UPSTAIRS' (value '2')- When the subject was walking upstairs
* 'WALKING_DOWNSTAIRS' (value '3')- When the subject was walking downstairs
* 'SITTING' (value '4')- When the subject was sitting
* 'STANDING' (value '5')- When the subject was standing
* 'LAYING' (value '6')- When the subject was lying down

## Variables of Time and Frequency
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer-XYZ and TimeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 


In these variables, Mean() indicates the average, StandardDeviation() refers to the standard deviation, and the ending of “-XYZ” denotes the 3-axial signals in the X, Y and Z directions.

## Time variables
The average time body acceleration (in the X, Y, and Z directions) in standard gravity units g
* 'TimeBodyAccelerometer-Mean()-X'
* 'TimeBodyAccelerometer-Mean()-Y' 
* 'TimeBodyAccelerometer-Mean()-Z'

The standard deviation time body acceleration (in the X, Y, and Z directions) in standard gravity units g
* 'TimeBodyAccelerometer-StandardDeviation()-X'
* 'TimeBodyAccelerometer-StandardDeviation()-Y' 
* 'TimeBodyAccelerometer-StandardDeviation()-Z' 

The average time gravity acceleration (in the X, Y, and Z directions) in standard gravity units g
* 'TimeGravityAccelerometer-Mean()-X' 
* 'TimeGravityAccelerometer-Mean()-Y'
* 'TimeGravityAccelerometer-Mean()-Z'

The standard deviation time gravity acceleration (in the X, Y, and Z directions) in standard gravity units g
* 'TimeGravityAccelerometer-StandardDeviation()-X' 
* 'TimeGravityAccelerometer-StandardDeviation()-Y'
* 'TimeGravityAccelerometer-StandardDeviation()-Z'

The average time body acceleration Jerk signals (in the X, Y, and Z directions) in standard gravity units g
* 'TimeBodyAccelerometerJerk-Mean()-X'
* 'TimeBodyAccelerometerJerk-Mean()-Y' 
* 'TimeBodyAccelerometerJerk-Mean()-Z'

The standard deviation time body acceleration Jerk signals (in the X, Y, and Z directions) in standard gravity units g
* 'TimeBodyAccelerometerJerk-StandardDeviation()-X'
* 'TimeBodyAccelerometerJerk-StandardDeviation()-Y'
* 'TimeBodyAccelerometerJerk-StandardDeviation()-Z'

The average time body gyroscope (in the X, Y, and Z directions) in radians/second
* 'TimeBodyGyroscope-Mean()-X'
* 'TimeBodyGyroscope-Mean()-Y'
* 'TimeBodyGyroscope-Mean()-Z'

The standard deviation time body gyroscope (in the X, Y, and Z directions) in radians/second
* 'TimeBodyGyroscope-StandardDeviation()-X'
* 'TimeBodyGyroscope-StandardDeviation()-Y'
* 'TimeBodyGyroscope-StandardDeviation()-Z'

The average time body gyroscope Jerk signals (in the X, Y, and Z directions) in radians/second
* 'TimeBodyGyroscopeJerk-Mean()-X'
* 'TimeBodyGyroscopeJerk-Mean()-Y'
* 'TimeBodyGyroscopeJerk-Mean()-Z'

The standard deviation time body gyroscope Jerk signals (in the X, Y, and Z directions) in radians/second
* 'TimeBodyGyroscopeJerk-StandardDeviation()-X'
* 'TimeBodyGyroscopeJerk-StandardDeviation()-Y'
* 'TimeBodyGyroscopeJerk-StandardDeviation()-Z'

The average and standard deviation of the magnitude for time body accelerometer in standard gravity units g
* 'TimeBodyAccelerometerMagnitude-Mean()'
* 'TimeBodyAccelerometerMagnitude-StandardDeviation()'

The average and standard deviation of the magnitude for time gravity accelerometer in standard gravity units g
* 'TimeGravityAccelerometerMagnitude-Mean()' 
* 'TimeGravityAccelerometerMagnitude-StandardDeviation()' 

The average and standard deviation of the magnitude for time body accelerometer Jerk signals in standard gravity units g
* 'TimeBodyAccelerometerJerkMagnitude-Mean()'
* 'TimeBodyAccelerometerJerkMagnitude-StandardDeviation()' 

The average and standard deviation of the magnitude for time body gyroscope radians/second
* 'TimeBodyGyroscopeMagnitude-Mean()'
* 'TimeBodyGyroscopeMagnitude-StandardDeviation()'

The average and standard deviation of the magnitude for time body gyroscope Jerk signals in radians/second
* 'TimeBodyGyroscopeJerkMagnitude-Mean()'
* 'TimeBodyGyroscopeJerkMagnitude-StandardDeviation()' 

## Frequency Variables
The average frequency accelerometer (in the X, Y, and Z directions) in standard gravity units g
* 'FrequencyBodyAccelerometer-Mean()-X'
* 'FrequencyBodyAccelerometer-Mean()-Y'
* 'FrequencyBodyAccelerometer-Mean()-Z'

The standard deviation of frequency accelerometer (in the X, Y, and Z directions) in standard gravity units g
* 'FrequencyBodyAccelerometer-StandardDeviation()-X'
* 'FrequencyBodyAccelerometer-StandardDeviation()-Y' 
* 'FrequencyBodyAccelerometer-StandardDeviation()-Z' 

The average frequency accelerometer Jerk signals (in the X, Y, and Z directions) in standard gravity units g
* 'FrequencyBodyAccelerometerJerk-Mean()-X'
* 'FrequencyBodyAccelerometerJerk-Mean()-Y' 
* 'FrequencyBodyAccelerometerJerk-Mean()-Z' 

The standard deviation frequency accelerometer Jerk signals (in the X, Y, and Z directions) in standard gravity units g
* 'FrequencyBodyAccelerometerJerk-StandardDeviation()-X'
* 'FrequencyBodyAccelerometerJerk-StandardDeviation()-Y' 
* 'FrequencyBodyAccelerometerJerk-StandardDeviation()-Z' 

The average frequency gyroscope (in the X, Y, and Z directions) in radians/second
* 'FrequencyBodyGyroscope-Mean()-X'
* 'FrequencyBodyGyroscope-Mean()-Y' 
* 'FrequencyBodyGyroscope-Mean()-Z'

The standard deviation frequency gyroscope (in the X, Y, and Z directions) in radians/second
* 'FrequencyBodyGyroscope-StandardDeviation()-X'
* 'FrequencyBodyGyroscope-StandardDeviation()-Y' 
* 'FrequencyBodyGyroscope-StandardDeviation()-Z' 

The average and standard deviation of the magnitude for frequency body accelerometer in standard gravity units g
* 'FrequencyBodyAccelerometerMagnitude-Mean()'
* 'FrequencyBodyAccelerometerMagnitude-StandardDeviation()' 

The average and standard deviation of the magnitude for frequency body accelerometer Jerk signals in standard gravity units g
* 'FrequencyBodyAccelerometerJerkMagnitude-Mean()'
* 'FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation()'

The average and standard deviation of the magnitude for frequency body gyroscope in radians/second
* 'FrequencyBodyGyroscopeMagnitude-Mean()'
* 'FrequencyBodyGyroscopeMagnitude-StandardDeviation()' 

The average and standard deviation of the magnitude for frequency body gyroscope Jerk signals in radians/second
* 'FrequencyBodyGyroscopeJerkMagnitude-Mean()'
* 'FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation()'


