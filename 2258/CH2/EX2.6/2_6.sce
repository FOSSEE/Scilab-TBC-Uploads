clc();
clear;
// To calculate the mobility and average time of collision of electrons
d=8.92*10^3;   //density in kg/m^3
rho=1.73*10^-8;   //resistivity in ohm-m
m=9.1*10^-31;    //mass in kg
w=63.5;    //atomic weight
e=1.6*10^-19;    //charge in coulomb
A=6.02*10^26;    //avagadro number
n=(d*A)/w;
mew=1/(rho*n*e);
tow=m/(n*(e^2)*rho);
printf("mobility of electrons in Copper is %f m/Vs",mew);
printf("average time of collision of electrons in copper in sec is");
disp(tow);
