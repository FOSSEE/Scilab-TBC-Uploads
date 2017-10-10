
//To calculate the number of molecules in each cubic metre

//Example 24.3

clear;

clc;

p=1.0*10^5;//pressure in N/m^2

v=1;//volume in cubic metre

t=300;//temperature in Kelvin

k=1.38*10^-23;//boltzmann constant(J/K)

n=p*v/(k*t);//formula for finding number of molecules

printf("number of molecule=%f*10^25",n/(10^25));

