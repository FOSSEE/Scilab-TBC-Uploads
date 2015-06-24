//Example 3.14
//Program to Compute circular convolution of following sequences
//x1[n]=[1,2,2,1]
//x2[n]=[1,2,3,1]
clear;
clc ;
close ;
x1=[1,2,2,1];
x2=[1,2,3,1];
//DFT Computation
X1=fft(x1,-1);
X2=fft(x2,-1);
Y=X1.*X2;
//IDFT Computation
y=fft(Y,1);
//Display sequence y[n] in command window
disp(y,"y[n]=");