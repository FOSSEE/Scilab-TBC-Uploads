//clc();
clear;
//To determine the natural frequency of iron
l=40*10^(-3);           //length of pure iron rod in metres
rho=7.25*10^3;          //density of pure iron in kg/m^3
Y=115*10^9;             //youngs modulus in N/m^2
new=(sqrt(Y/rho))*10^(-3)/(2*l);
printf("the natural frequency of pure iron is %f KHz",new);
