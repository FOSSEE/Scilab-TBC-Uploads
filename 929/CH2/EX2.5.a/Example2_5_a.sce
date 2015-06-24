//Example 2.5(a)

clear;

clc;

R1=15*10^3;//From the result of Example 2.4

p=0.01;//For 1% tolerance p=t/100=1/100=0.01

emax=4*p;//imbalace factor

Romin=R1/emax;

printf("Ro can be anywhere in the range Ro>=%.2f kohms",Romin*10^(-3));