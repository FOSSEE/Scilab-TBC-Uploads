clc;
clear;
L=3*10^-2 //length of plates in m
d=4*10^-3 //spacing betweenn plates in m
l=30*10^-2 //distance in m
V1=2500 //potential in V

//Calculation
Se=(L*l)/(2*d*V1)/10^-4

mprintf("Deflection Sensitivity = %1.1f*10^-4 m/V",Se)
