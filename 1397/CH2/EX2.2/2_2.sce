//clc();
clear;
//To determine the frequency of the fundamental note
l=3*10^(-3);           //vibrating length in metres
Y=8*10^10;             //Youngs modulus in N/m^2
rho=2.5*10^3;          //density of crystal in kg/cm^3
new=(sqrt(Y/rho))/(2*l);
printf("the frequency of the fundamental note emitted by piezo-electric crystal is %f Hz",new);
