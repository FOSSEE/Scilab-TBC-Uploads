clc;
clear;
P=10 //power in watt
d=10 //distance from the source in m 
n=1 //refractive index
c=3*10^8 //velocity of light in m/s
myu_0=4*10^-7 //vaccum permittivity

//calculation
I=P/(4*%pi*d^2) //intensity in W/m^2
E_0=sqrt(2*c*myu_0*I)/n

mprintf("The electric field of the bulb = %f V/m",E_0)
//The answer given in the textbook is wrong.
