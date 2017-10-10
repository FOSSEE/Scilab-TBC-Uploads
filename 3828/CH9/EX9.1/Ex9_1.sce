//Chapter 9 : Electromagnetic Theory

clear;

//Variable declaration
P=60                   //Power
r=2                    //distance from source
epsilon0=8.85*10**-12
C=3*10**2

//Calculations
E0=sqrt((P*2)/(4*%pi*r**2*C*epsilon0))/1000

//Result
mprintf("Amplitude of field E= %.0f V/m",E0)

