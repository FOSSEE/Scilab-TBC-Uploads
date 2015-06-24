
//sum of 7 terms of the series 2,3,4,5,....
clear;
clc;
close;
r=3/2;a=2;n=7;//given
//using the formula
S=string('a*(r^(n)-1)/(r-1)')
disp("substituting the given values ")
format(6)
Sum=evstr(S)



