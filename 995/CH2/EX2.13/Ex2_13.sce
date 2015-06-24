//Ex:2.13
clc;
clear;
close;
r1=4.7;//in ohms
r2=47;//in ohms
r3=12;//in ohms
r4=27;//in ohms
r5=r3+r4;
r_parel=((1/r5)+(1/r2))^-1;
r_eff=r_parel+r1;
printf("Effective resistance = %d ohms",r_eff);
