//Example 6_2_u2
clc();
clear;
//To calculate the atomic polarizability
eo=8.85*10^-12
er=1.000435
n=2.7*10^25
alpha=(eo*(er-1))/n          //units in met^3
printf("The atomic polarizability is aplha=")
disp(alpha)
printf("met^3")
