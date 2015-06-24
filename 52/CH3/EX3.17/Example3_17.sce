//Example 3.17
//Program to Compute y[n] where Y[k]=X1[k].X2[k]
//x1[n]=[0,1,2,3,4]
//x2[n]=[0,1,0,0,0]
clear;
clc ;
close ;
x1=[0,1,2,3,4];
x2=[0,1,0,0,0];
//DFT Computation
X1=fft(x1,-1);
X2=fft(x2,-1);
Y=X1.*X2;
//IDFT Computation
y=round(fft(Y,1));
//Display sequence y[n] in command window
disp(y,"y[n]=");