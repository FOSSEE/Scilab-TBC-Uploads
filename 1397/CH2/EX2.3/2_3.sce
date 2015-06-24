//clc();
clear;
//To determine the natural frequency of ultrasonic waves
l=5.5*10^(-3);           //thickness of quartz plate in metres
Y=8.0*10^10;             //youngs modulus of quartz in N/m^2
rho=2.65*10^3;           //density in kg/m^3
new=(sqrt(Y/rho))*10^(-3)/(2*l);
printf("natural frequency of ultrasonic waves is %f KHz",new);
