// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 6")
//Thickness of plate in m
L = 0.2;
//Initial temperature in °C
Ti = 530;
//Heat transfer coefficient in W/(m^2*K)
h = 500;
//Given distance in m
x = L-20*(10^(-3));
//Temperature of surrounding in °C
Tinfinity = 30;
//Given time in seconds
t = 225;
//Thermal conductivity of aluminium in W/(m*K)
k = 200;
//Thermal diffusivity in m^2/s
alpha = 8*(10^(-5));
//Biot number
Bi = (h*L)/k;
//Fourier number
Fo = (alpha*t)/(L*L);
//From fig. 4.11, at this Fo and (1/Bi), we have dimensionless temperature
//ratio to be 0.7
//From fig. 4.12 for this (1/Bi) and (x/L), we have another dimensionless
//temperature to be 0.93
//Temperature in °C
T = Tinfinity+(0.93*0.7)*(Ti-Tinfinity);
disp("Temperature at this distance in °C")
T
//From fig. 4.13, for this Bi and Fo*Bi*Bi, we have ratio of heats as
//Q/Qi=0.4
//Heat transfer in J
Q = (((0.4*k)*L)*(Ti-Tinfinity))/alpha;
disp("Heat transfer rate in MJ")
Q = Q/(10^6)
