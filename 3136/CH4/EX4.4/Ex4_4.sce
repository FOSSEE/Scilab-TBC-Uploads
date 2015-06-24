clear all; clc;

disp("From figure 4.7a, H=235ft, Q=170 gpm at b.e.p. of 57.5%. ")
disp("The corresponding NPSHR is 8.7ft. From the steam table we have pv=3.73 psia at T=150 degrees Farenheit")
disp("Also NPSPA=pt-pf+rho*g*Z-pv is greater than or equal to NPSPR ")
disp("Thus we can determine the value of Z")

NPSHR=8.7
p_t=20
p_f=1.5*((170/50)^2)
p_v=3.73
//Let x=rho*g=62.4
x=62.4

Z=NPSHR-[p_t-p_f-p_v]*(144/(x))//144 is conversion factor

printf(" Thus the value of Zis equal to %0.1f ft",Z)
