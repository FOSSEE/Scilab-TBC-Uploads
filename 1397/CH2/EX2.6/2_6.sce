//clc();
clear;
//To determine the fundamental frequency
l=3*10^(-3);           //vibrating length of piezo electric crystal in metres
rho=3.5*10^3;          //density of piezo electric crystal in kg/m^3
Y=8*10^10;             //youngs modulus in N/m^2
new=((10^-3)*(sqrt(Y/rho))*10^(-3))/(2*l);
printf("the fundamental frequency is %f Hz",new);
