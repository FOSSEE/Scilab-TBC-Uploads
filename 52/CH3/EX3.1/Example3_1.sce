//Example 3.1
//Program to Compute the DFT of a Sequence x[n]=[1,1,0,0] 
//and IDFT of a Sequence Y[k]=[1,0,1,0]
clear;
clc ;
close ;
x = [1,1,0,0];
//DFT Computation
X = fft (x , -1);
Y = [1,0,1,0];
//IDFT Computation
y = fft (Y , 1);
//Display sequence X[k] and y[n] in command window
disp(X,"X[k]=");
disp(y,"y[n]=");