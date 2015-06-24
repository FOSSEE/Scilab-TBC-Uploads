clear;
clc;
disp("--------------Example 3.35---------------")
L=4; //number of levels
bandwidth=3000; // Hz
max_bitrate=2*bandwidth*log2(L); // formula to calculate maximum bit rate
printf("The maximum bit rate of the noiseless channel is %d bps.",max_bitrate); // display result
