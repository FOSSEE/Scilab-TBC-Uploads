//Ex:1.40
clc;
clear;
close;
fo=25*10^6;// frequency in Hz
Q=40;
B_W=fo/Q;// bandwidth in Hz
printf("The bandwidth = %d KHz", B_W/1000);