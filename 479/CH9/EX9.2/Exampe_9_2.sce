//Chemical Engineering Thermodynamics
//Chapter 9
//Fluid Flow in Pipes and Nozzles
//Example 9.2
clear;
clc;

//Given
A1 = 0.002;//inlet area in sq meter
A2 = 0.0005;//throat area in sq meter
P1 = 1.3*10^4;//inlet pressure in Kgf/sq m
P2 = 0.7*10^4;//throat pressure in Kgf/sq m
g = 9.81;
v = 12*10^-4;//specific volume in cubic m /Kg

//To find out the mass rate of alcohol
u2 = ((v*2*g*(P1-P2))/(1-((A2/A1)^2)))^(1/2);//throat velocity in m/sec
W = (u2*A2)/v;
mprintf('The mass rate of alcohol is %f Kg/sec',W);