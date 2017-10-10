clc;
clear;
C= 4*10^-6 // capacitance in F
L=0.25 // inductance in H
R=50 //resistance in ohm

//calculation

F0=1/(2*%pi)*sqrt(1/(L*C)-(R^2/L^2))

mprintf("The frequency of resonance = %f Hz",F0)
//The answer varies due to round off error
