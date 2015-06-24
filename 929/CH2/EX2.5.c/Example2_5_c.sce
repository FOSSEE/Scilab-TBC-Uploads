//Example 2.5(c)

clear;

clc;

R1=15*10^3;//From the result of Example 2.4

Romin=50*10^6;

emax=R1/Romin;

p=emax/4;

pper=p*100;

printf("Resistance tolerance Required=%.5f percent",pper);