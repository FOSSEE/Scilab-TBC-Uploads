clear;
clc;
disp("--------------Example 17.2---------------")
frame_rate=8000; // frames per sec
frame=9*(3*90); // each frame is made of 9 by (3x90) bytes
bits=8; // 1byte = 8 bits
STS3_data_rate=frame_rate*frame*bits; // formula
printf("The STS-3 data rate is %5.2f Mbps.",STS3_data_rate*10^-6); // display result with appropriate unit
