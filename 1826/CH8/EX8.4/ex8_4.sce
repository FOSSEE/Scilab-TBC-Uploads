// Example 8.4, page no-211
clear
clc
d=2700//kh/m^3
awt=27
t=10^-14//s
e=1.6*10^-19//C
m=9.1*10^-31//Kg
avg=6.023*10^26
n=avg*d*3/awt
sig=(n*t*e^2)/m
printf("The conductivity of Al is %.4f*10^7 ohm-m.",sig*10^-7)
