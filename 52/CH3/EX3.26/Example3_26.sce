//Example 3.26
//Program to Compute the Linear Convolution of the following Sequences
//x[n]=[1,-1,1]
//h[n]=[2,2,1]
clear;
clc ;
close ;
x=[1,-1,1];
h=[2,2,1];
//Convolution Computation
y= convol(x,h);
//Display sequence y[n] in command window
disp(y,"y[n]=");

