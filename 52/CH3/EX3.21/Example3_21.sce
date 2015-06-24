//Example 3.21
//Program to Compute Linear Convolution of following sequences
//x[n]=[1,2,-1,2,3,-2,-3,-1,1,1,2,-1]
//h[n]=[1,2]
clear;
clc ;
close ;
x=[1,2,-1,2,3,-2,-3,-1,1,1,2,-1];
h=[1,2];
// Linear Convolution Computation
y=convol (x,h);
//Display Sequence y[n] in command window
disp(y,"y[n]=");