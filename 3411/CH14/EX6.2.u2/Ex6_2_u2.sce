//Example 6_2_u2
clc();
clear;
//To calculate the atomic polarizability
eo=8.85*10^-12         //units in F/meter
er=1.000435
n=2.7*10^25        //No of atoms/meter^3
alpha=(eo*(er-1))/n          //units in meter^3
printf("The atomic polarizability is aplha=")
disp(alpha)
printf("meter^3")
