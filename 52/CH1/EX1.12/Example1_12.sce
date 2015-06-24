//Example 1.12
//Program to Compute convolution of given sequences
//x(n)=[3 2 1 2], h(n)=[1 2 1 2];
clear;
clc ;
close ;
x=[3 2 1 2];
h=[1 2 1 2];
y=convol(x,h);
disp(y);
