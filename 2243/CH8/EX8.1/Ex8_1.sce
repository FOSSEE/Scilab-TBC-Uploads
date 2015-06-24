clc();
clear;
//Given:
mp = 1.67*10^-27 ; // proton mass in kg
r0 = 1.2*10^-15; // constant in m
a0 = 0.5*10^-10; // atomic dimensions in m
//rho_nucleus = nuclear mass/ nuclear volume
rho_nucleus = (3*mp)/(4*%pi*r0^3); // nuclear density in kg/m^3
//ratio = rho_nucleus/rho_atom =  (a0/r0)^3
ratio = a0^3/r0^3;
printf("Nuclear density is %.1f x 10^17 kg/m^3 \n",rho_nucleus*10^-17);
printf("Nuclear density is %.1f x 10^13 times Atomic density.",ratio*10^-13);


