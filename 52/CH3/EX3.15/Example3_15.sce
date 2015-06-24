//Example 3.15
//Program to Compute x3[n] where X3[k]=X1[k].X2[k]
//x1[n]=[1,2,3,4]
//x2[n]=[1,1,2,2]
clear;
clc ;
close ;
x1=[1,2,3,4];
x2=[1,1,2,2];
//DFT Computation
X1=fft(x1,-1);
X2=fft(x2,-1);
X3=X1.*X2;
//IDFT Computation
x3=fft(X3,1);
//Display sequence x3[n] in command window
disp(x3,"x3[n]=");