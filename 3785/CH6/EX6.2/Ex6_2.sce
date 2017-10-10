// Example 6_2
clc;funcprot(0);
// Given data
a=1.0;// s^-1
b=0.1;// s^-1
c=2.0;// s^-1  where a,b,c are constants
z=1;// m
mu=1.82*10^-5;// Pa s

// Calculation
delp=mu*(2*b);// Pa/m
printf("[delp=%1.2e Pa/m]i_x",delp)
