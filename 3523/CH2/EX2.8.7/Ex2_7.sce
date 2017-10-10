// Example 7// Ch 2
clc;
clear;
close;
// given data 
q = 1; // line charge in C/m
Epsilon_o=8.85*10^-12;
x1 = [1/3 + 1/7];//infinite sequence
x2 = [1 + 1/5 + 1/9];//infinite sequence
x3 = [1/5 + 1/9];//infinite sequence
E = (q/(2*%pi*Epsilon_o))*[1 - x1 + x2 + x3 - x1];
printf("total electric field is %e V/m",E)
// answer by this program is the round of value
