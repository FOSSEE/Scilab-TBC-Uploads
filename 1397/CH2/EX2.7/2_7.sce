//clc();
clear;
//To determine the fundamental frequency
t=0.001;           //thickness of the crystal in metres
rho=2650;          //density of quartz in kg/m^3
Y=7.9*10^10;             //youngs modulus in N/m^2
V=sqrt(Y/rho);
printf("the fundamental frequency is %f m/s",V);
//For fundamental mode of vibration, the thickness must be equal to lambda/2
lambda=2*t;
new=V/lambda;
printf("the fundamental frequency is %f Hz",new);
