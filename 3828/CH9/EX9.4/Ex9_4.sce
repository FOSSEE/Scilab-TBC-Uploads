//Chapter 9 : Electromagnetic Theory

clear;

//Variable declaration
myu0=4*%pi*10**-7
r=2                         //radius of Hemisphere
epsilon0=8.85*10**-12
P0=1000                     //Power 

//Calculations
E=((P0*sqrt(myu0/epsilon0))/(16*%pi))**(1/2)
H=P0/(16*%pi*E)

//Result
mprintf("Intensity of Electric field E= %.2f V/m" ,E)
mprintf("\nIntensity of Magnetic field H= %.2f amp. turn/m" ,H)

