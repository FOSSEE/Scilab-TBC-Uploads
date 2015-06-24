// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 8")
//Radius in m
ro = 0.05;
//Initial temperature in °C
Ti = 530;
//Temperature of surrounding in °C
Tinfinity = 30;
//Heat transfer coefficient in W/(m^2*K)
h = 500;
//Thermal conductivity of aluminium in W/(m*K)
k = 50;
//Thermal diffusivity in m^2/s
alpha = 1.5*(10^(-5));
//Required centre temperature to achieve in °C
To = 105;
//Dimensionless temperature
z = (To-Tinfinity)/(Ti-Tinfinity);
//Biot number
Bi = (h*ro)/k;
//For this value of (1/Bi) and dimensionless temp. ratio
//From Fig. 4.19 Fourier number is
Fo = 1.5;
//Time required in seconds
t = ((Fo*ro)*ro)/alpha;
disp("Time required in minutes")
t = t/60
