//Example 6_1
clc();
clear;
//To calculate the relative population
h=6.626*10^-34
v=4.32*10^14
kb=1.38*10^-23
t=300
k=(h*v)/(kb*t)
n1_n2=%e^k
printf("Relative population N1/N2=")
disp(n1_n2)
