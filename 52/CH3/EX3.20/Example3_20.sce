//Example 3.20
//Program to Compute Linear Convolution of following sequences
//x[n]=[3,-1,0,1,3,2,0,1,2,1]
//h[n]=[1,1,1]
clear;
clc ;
close ;
x=[3,-1,0,1,3,2,0,1,2,1];
h=[1,1,1];
// Linear Convolution Computation
y=convol (x,h);
//Display Sequence y[n] in command window
disp(y,"y[n]=");