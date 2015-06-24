clear;
clc;
disp("--------------Example 3.40---------------")
SNRdB=36;
B=2; // bandwidth = 2 MHz
C=B*(SNRdB/3); //when the SNR is very high, we can assume that SNR + 1 is almost the same as SNR
printf("The theoretical channel capacity is %d Mbps.",C); // display result
