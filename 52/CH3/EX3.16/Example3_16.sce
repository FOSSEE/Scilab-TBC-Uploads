//Example 3.16
//Program to Compute circular convolution of following sequences
//x1[n]=[1,1,2,1]
//x2[n]=[1,2,3,4]
clear;
clc ;
close ;
x1=[1,1,2,1];
x2=[1,2,3,4];
//DFT Computation
X1=fft(x1,-1);
X2=fft(x2,-1);
X3=X1.*X2;
//IDFT Computation
x3=fft(X3,1);
//Display sequence x3[n] in command window
disp(x3,"x3[n]=");