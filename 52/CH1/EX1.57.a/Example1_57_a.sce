//Example 1.57 (a)
//Program to Compute discrete convolution of given sequences
//x(n)=[1 2 -1 1], h(n)=[1 0 1 1];
clear;
clc ;
close ;
x=[1 2 -1 1];
h=[1 0 1 1];
y=convol(x,h);
disp(round(y));
