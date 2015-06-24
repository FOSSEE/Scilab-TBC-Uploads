//clear//
//Caption: Calculation of pulse broadening
//Example3.5
//page 103
clear;
clc;
close;
C = 3e08; //free space velocity in metre/sec
n1 = 1.48;//core refractive index
n2 = 1.465;//cladding refractive index
delta = 0.01; //index difference
L = 10^3;//fiber length 10KM
deltaT = (L*(n1^2)/(C*n2))*delta;
disp((deltaT/L)*10^12,'pulse broadening in ns/KM')
//Result
//pulse broadening in ns/KM  = 49.838453 
