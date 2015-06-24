clear;
clc;

//Caption: Pinch off V and channel half width of silicon FET

//Given Values
a=3*(10^-4);//in cm
Nd=10^15;//in electrons/cm^3
q=1.6*(10^-19)//in C
eo=8.85*(10^-12);//Permittivity of free space
e=12*eo;//Relative Permittivity

Vp=(q*Nd*a*a*10^6*10^-4)/(2*e);//in V
//a is in cm so 10^-4 is multiplied and Nd is in electrons/cm^3 so 10^6 is multiplied
disp('V',Vp,'Pinch off Voltage =');

//end