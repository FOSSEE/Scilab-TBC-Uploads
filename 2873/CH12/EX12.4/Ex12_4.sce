// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 4")
r1=150*10^-2/2;//inner radius in m
r2=200*10^-2/2;//outer radius in m
k=28;//thermal conductivity in KJ m hr oc
T1=200;//inside surface temperature in degree celcius
T2=40;//outer surface temperature in degree celcius
disp("considering one dimensional heat transfer of steady state type")
disp("for sphere(Q)=(T1-T2)*4*%pi*k*r1*r2/(r2-r1) in KJ/hr")
Q=(T1-T2)*4*%pi*k*r1*r2/(r2-r1)
disp("so heat transfer rate=168892.02 KJ/hr")
disp("heat flux=Q/A in KJ/m^2 hr")
Q/(4*%pi*r1^2)
disp("so heat flux=23893.33 KJ/m^2 hr")
