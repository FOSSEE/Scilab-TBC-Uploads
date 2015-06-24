// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 5")
//Thermal conductivity of wall in W/(m*K)
k = 0.6;
//Thermal diffusivity in m^2/s
alpha = 5*(10^(-7));
//Thickness in m
L = 0.15;
//Initial temperature in °C
Ti = 30;
//Temperature of hot gas in °C
Tinfinity = 780;
//Heat transfer coefficient in W/(m^2*K)
h = 20;
//Surface temperaute to be achieved in °C
To = 480;
//Dimensionless temperature ratio
z = (To-Tinfinity)/(Ti-Tinfinity);
//Biot number
Bi = (h*L)/k;
//For this value of (1/Bi) and dimensionless temp. ratio
//From Fig. 4.11 Fourier number is
Fo = 0.6;
//Time required in seconds
t = ((Fo*L)*L)/alpha;
disp("Time required in hours")
t = t/3600
//From fig. 4.13, for this Bi and Fo*Bi*Bi, we have ratio of heats as
//Q/Qi=0.69
//Heat transfer in J
Q = ((((0.69*k)*2)*L)*(Tinfinity-Ti))/alpha;
disp("Heat transfer rate in MJ")
Q = Q/(10^6)
