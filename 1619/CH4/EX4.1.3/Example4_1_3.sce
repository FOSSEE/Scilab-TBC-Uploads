//Example 4.1.3 page 4.3

clc;
clear;

P = 6*10^6;
Eh_pair= 5.4*10^6;
n= Eh_pair/P*100;
printf("The quantum efficiency is %d %%",n);
