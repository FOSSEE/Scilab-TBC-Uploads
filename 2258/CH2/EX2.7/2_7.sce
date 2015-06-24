clc();
clear;
// To calculate the relaxation time of conduction electrons
rho=1.54*10^-8;    //resistivity in ohm-m
n=5.8*10^28;   //electron/m^3
m=9.108*10^-31;   //mass in kg
e=1.602*10^-19;   //charge in coulomb
tow=m/(n*(e^2)*rho);
printf("relaxation time of conduction electrons in sec is");
disp(tow);
