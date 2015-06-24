//Example 3.4
//Program to Compute the IDFT of the Sequence X[k]=[5,0,1-j,0,1,0,1+j,0] 
clear;
clc ;
close ;
j=sqrt(-1);
X = [5,0,1-j,0,1,0,1+j,0] 
//IDFT Computation
x = fft (X , 1);
//Display sequences x[n]in command window
disp(x,"x[n]=");
