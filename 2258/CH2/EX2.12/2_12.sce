clc();
clear;
// To calculate the relaxation time of conduction electrons
rho=1.43*10^-8;    //resistivity in ohm-m
n=6.5*10^28;   //electron/m^3
m=9.11*10^-34;   //mass in kg
e=1.6*10^-19;   //charge in coulomb
tow=m/(n*(e^2)*rho);
printf("relaxation time of conduction electrons in sec is");
disp(tow);
