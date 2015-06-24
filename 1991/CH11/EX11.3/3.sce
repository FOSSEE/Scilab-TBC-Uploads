clc
clear
//input
v1=7.5//initial voltag
v2=11.5//final voltage
ic=18*10^-6//collector current
//calculation
r=(v2-v1)/ic//output resistance
//output
printf("the output resistance is %2.2e ohm ",r)
