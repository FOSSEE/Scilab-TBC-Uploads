//clear//
//Caption:Shannon Channel Capacity formula
//Example1.4
//page 12
clear;
clc;
close;
B = 10^6; //Bandwidth of noisy channel 10MHZ
S_N = 1; //signal-to-noise ration is 1
C = B*log2(1+S_N);
disp(C,'The maximum capacity for this channel in bits/sec C =')
//Result
//The maximum capacity for this channel in bits/sec C = 1000000.
