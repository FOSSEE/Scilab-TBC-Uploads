//Calculate Intrinsic Carrier density
//Ex:15.5
clc;
clear;
close;
m=0.14;//mobility of electron
u_h=0.05;//mobility of holes
p=3000;//resistivity in ohm-m
e=1.602*10^-19;//charge of an electron in C
a=1/p;//conductivity 
n=a/(e*(m+u_h));
disp(n,"Intrinsic Carrier density in pure silicon (in per cu m) = ");