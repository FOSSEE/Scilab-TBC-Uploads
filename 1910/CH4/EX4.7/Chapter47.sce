// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 7")
//Radius in m
ro = 0.15;
//Initial temperature in °C
Ti = 530;
//Temperature of surrounding in °C
Tinfinity = 30;
//Heat transfer coefficient in W/(m^2*K)
h = 380;
//Thermal conductivity of aluminium in W/(m*K)
k = 200;
//Thermal diffusivity in m^2/s
alpha = 8.5*(10^(-5));
//Given radius at which temperature has to be find out in m
r = 0.12;
//Given time in seconds
t = 265;
//Fourier number
Fo = (alpha*t)/(ro^2);
//Biot number
Bi = (h*ro)/k;
//From fig. 4.15, at this fourier number,Fo and (1/Bi), we have dimensionless temperature
//ratio to be 0.6
//From fig. 4.16 for this (1/Bi) and (r/ro), we have another dimensionless
//temperature to be 0.9
//Temperature in °C
T = Tinfinity+(0.9*0.6)*(Ti-Tinfinity);
disp("Temperature at this radius in °C")
T
//From fig. 4.17, for this Bi and Fo*Bi*Bi, we have ratio of heats as
//Q/Qi=0.4
//Heat transfer per metre in J/m
Q = (((((0.4*k)*%pi)*ro)*ro)*(Ti-Tinfinity))/alpha;
disp("Heat transfer rate per unit length in MJ/m")
Q = Q/(10^6)
