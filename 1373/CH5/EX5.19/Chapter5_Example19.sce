//Chapter-5, Example 5.19, Page 205
//=============================================================================
clc
clear


//INPUT DATA
t=0.6;//Thickness of the wall in m
x=0.1;//x value taken from Fig.Ex. 5.19 on page no. 205
Ti=20;//Initial temperature in degree C
T=[150,300];//Temperatures of the sides of the wall in degree C
Tf=150;//Final temperature of the wall in degree C
a=(1.66*10^-3);//Thermal diffusivity in m^2/h

//CALCULATIONS
t=(x^2/(2*a));//Length of one time increment in h
t1=(9*t);//Elapsed time in h

//OUTPUT
mprintf('Elasped time before the centre of the wall attains a temperature of 150 degree C is %3.0f h',t1)

//=================================END OF PROGRAM==============================
