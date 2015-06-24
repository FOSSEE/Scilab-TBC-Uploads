clc();
clear;
//To determine the frequency of ultrasonic waves
Y=77*(10^10);                               //Youngs modulus for quartz in dyne/cm^2
rho=2.6;                                    //density of quartz in g/cm^3
t=0.4;                                      //thickness in cm
f=((1/(2*t))*sqrt(Y/rho))*10^-3             //frequency
printf("The frequency of ultrasonic waves produced when a quartz plate of thickness 4mm is used is %d kHz",f);