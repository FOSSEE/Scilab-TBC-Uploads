clc();
clear;
//To calculate the wavelength of X-rays in the incident beam
h=6.626*10^-34;                        //plancks constant
teta=50;
m=9.1*10^-31;                          //mass of electron
c=3*10^8;                              //speed of light
deltalambda=(h/(m*c))*(1-cosd(50))*10^12
lambdafin=2.5;                         //wavelength of scattered X-rays
lambdainit=lambdafin-deltalambda
printf("The wavelength of X-rays in the incident beam is %f pm",lambdainit);