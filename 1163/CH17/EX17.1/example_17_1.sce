clear;
clc;
disp("--------------Example 17.1---------------")
frame_rate=8000; // frames per sec
frame=9*(1*90); // each frame is made of 9 by (1x90) bytes
bits=8; // 1byte = 8 bits
STS1_data_rate=frame_rate*frame*bits; // formula
printf("The STS-1 data rate is %5.3f Mbps.",STS1_data_rate*10^-6); // display result with appropriate unit
