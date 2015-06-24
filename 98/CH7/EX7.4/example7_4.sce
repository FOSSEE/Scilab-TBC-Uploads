//Chapter 7
//Example 7_4
//Page 149

clear;clc;

p1=200;

//The inference from the derivation is that power supplied by 3-phase , 3-wire a.c. system is twice the power supplied by single phase 2 wire system

p2=2*p1;

printf("Power supplied by 3-phase, 3-wire a.c. system is = %d kW \n\n", p2);
per=(p2-p1)/p1*100;
printf("Thus three phase three wire system can supply %d %% additional load \n\n", per);
