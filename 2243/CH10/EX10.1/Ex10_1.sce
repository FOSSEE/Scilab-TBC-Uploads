clc();
clear;
//Given:
er = 1.0000684; // relative dielectric constant
N = 2.7*10^25; // atoms/m^3
//We know, er - 1 = 4*pi*N*R^3
R = ((er-1)/(4*%pi*N))^(1/3) ; // in m
printf("R : %.1f x 10^-10 m",R*10^10);
