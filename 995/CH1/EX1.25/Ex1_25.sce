//Ex:1.25
clc;
clear;
close;
B1=0.6;//in Tesla
u1=B1/800;
u_r1=u1/(4*%pi*10^-7);
printf("reltive permitivity at 0.6T = %f",u_r1);
B2=1.6;//in Tesla
u2=0.2/4000;
u_r2=u2 /(4*%pi*10^-7);
printf("\n reltive permitivity at 1.6T = %f",u_r2);