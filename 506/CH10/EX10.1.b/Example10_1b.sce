clear;
clc;

//Caption: Pinch off V and channel half width of silicon FET

//Given Values
a=3*(10^-4);//in m
Nd=10^15;//in electrons/m^3
q=1.6*(10^-19)//in C
eo=8.85*(10^-12);//Permittivity of free space
e=12*eo;//Relative Permittivity

Vp=(q*Nd*a*a*10^6*10^-4)/(2*e);//in V
//a is in cm so 10^-4 is multiplied and Nd is in electrons/cm^3 so 10^6 is multiplied
Vgs= Vp/2;

b=a*(1-((Vgs/Vp)^(0.5)));//in cm

disp('cm',b,'Channel Half Width = ');

//end