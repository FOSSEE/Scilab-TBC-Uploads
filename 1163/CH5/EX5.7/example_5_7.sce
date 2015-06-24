clear;
clc;
disp("--------------Example 5.7---------------")
d=0;
r=2; // For QPSK, 2 bits is carried by one signal element
N=12; // bit rate = 12 Mbps
S=N*(1/r); // formula for signal rate
B=S; // bandwidth , as d=0
printf("The bandwidth is %d MHz.",B); // display result
