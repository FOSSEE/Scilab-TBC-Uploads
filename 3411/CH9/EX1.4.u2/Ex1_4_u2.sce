//Example 1_4_u2
clc();
clear;
//To find out the no of states that can accomodate
h=6.63*10^-34
m=9.1*10^-31
l=0.5*10^-9
v=15*1.6*10^-19
nmax=(4*l*sqrt(m*v))/h
printf("The maximum quantum number possible is n=%d",nmax)
