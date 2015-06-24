clear;
clc;
disp("--------------Example 17.4---------------")
frame_rate=8000; // frames per sec
//each frame is made of 9 rows and 86 columns
rows=9;
columns=(1*86);
bits=8; // 1byte = 8 bits
STS1_user_data_rate=frame_rate*rows*columns*bits; // formula
printf("The STS-1 user data rate is %5.3f Mbps.",STS1_user_data_rate*10^-6); // display result with appropriate unit
