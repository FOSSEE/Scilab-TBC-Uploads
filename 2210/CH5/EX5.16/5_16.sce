//Chapter 5, Problem 16
clc
req=125e3                       //effective resistance in ohm
f=465e3                         //resonant frequency in hertz
L=650e-6                        //tuning inductance in inductance

//calculation
Q=req/(2*%pi*f*L)
B=f/Q
printf("Q = %.1f \n\n Bandwidth = %d Hz",Q,B)
