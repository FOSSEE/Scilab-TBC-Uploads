clear;
clc;
disp("--------------Example 4.1---------------")
r=1; // 1 data element/ 1 signal element
N=100*10^3; // bitrate=100 kbps
c=(0+1)/2; //case factor
S=c*N*(1/r); // formula for baud rate
printf("The average baud rate is %d kbaud.",S*10^-3);//display result
