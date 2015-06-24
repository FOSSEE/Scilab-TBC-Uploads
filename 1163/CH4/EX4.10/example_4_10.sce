clear;
clc;
disp("--------------Example 4.10---------------")
bandwidth = 200*10^3; // 200 kHz
//The bandwidth of a low-pass signal is between 0 and f ,where f is the maximum frequency in the signal.
// Therefore, highest frequency =200 kHz 
f = bandwidth; // max frequency
sr = 2*f ; // sampling rate = 2*max frequency
printf("The sampling rate is %d samples per second.",sr);// display result
