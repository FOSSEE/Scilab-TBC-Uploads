//Example 2.7.2 page 2.38

clc;
clear;
L= 6;
n1= 1.5;
del= 0.01;
delta_t = L*n1*del/(3*10^8)*10^12; //convertin to nano secs...
printf("The delay difference is %d ns",delta_t);
