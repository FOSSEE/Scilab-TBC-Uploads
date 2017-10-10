clc;
clear;
P=10^-3 //power in watt
A=3*10^-6 //cross section area in m^2
n=1 //refractive index
c=3*10^8 //velocity of light in m/s
myu=4*10^-7 //vaccum permittivity

//calculation
I=P/A // Intensity in W/m^2s
E_0=sqrt((2*c*myu*I)/n)
mprintf("The electic field of the laser beam is = %d V/m",E_0)
//The answer provided in the textbook is wrong
