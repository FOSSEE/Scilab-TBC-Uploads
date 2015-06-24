clear;
clc;
disp("--------------Example 4.4---------------")
N=10*10^6; // bit rate = 10 Mbps
S=N/2; // formula for average signal rate
Bmin=S; // minimum bandwidth is equal to average baud
// display result 
printf("\nThe average signal rate is %d kbaud.",S*10^-3);
printf("\n\nThe minimum bandwidth is %d kHz.",Bmin*10^-3);
