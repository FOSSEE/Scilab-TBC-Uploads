//Example 3.27 (a)
//Program to Compute the Convolution of the following Sequences
//x1[n]=[1,1,1]
//x2[n]=[2,-1,2]
clear;
clc ;
close ;
x1=[1,1,1];
x2=[2,-1,2];
//Convolution Computation
X1=fft (x1,-1);
X2=fft (x2,-1);
Y=X1.*X2;
y=fft (Y,1);
//Display Sequence y[n] in command window
disp(y,"y[n]=");