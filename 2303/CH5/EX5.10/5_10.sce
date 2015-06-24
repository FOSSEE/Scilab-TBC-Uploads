//Example 5.10

clc;
clear;
close;

x=[1 2 3 4 1 2 3 4]
y=fft(x,-1);

//displaying 2nd DFT coefficient
disp(y(3),"X(2)=");
