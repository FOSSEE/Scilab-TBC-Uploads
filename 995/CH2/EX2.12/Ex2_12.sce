//Ex:2.12
clc;
clear;
close;
r1=22;//in ohms
r2=47;//in ohms
r3=33;//in ohms
r_ser=r1+r2+r3;
printf("Effective resistance in series = %d ohms",r_ser);
r_parel=((1/r1)+(1/r2)+(1/r3))^-1;
printf("\n Effective resistance in parallel = %f ohms",r_parel);
