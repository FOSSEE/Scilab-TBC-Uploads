//Graphical//
//Equation 7.7.1
//Program to find Dead band of First order Recursive System
//y(n) = a y(n-1)+x(n); a = (1/2) and a = (3/4)
clear;
clc;
close;
a = input('Enter the constant value of first Recursive system');
b = 4; //No. of bits used to represent
Dead_Band = (2^-b)*[(1/2)*(1/(1-a)),-(1/2)*(1/(1-a))]
//Result
//For a = (1/2)
//Dead Band = [0.0625  - 0.0625]
//For a = (3/4)
//Dead Band = [0.125  - 0.125]
