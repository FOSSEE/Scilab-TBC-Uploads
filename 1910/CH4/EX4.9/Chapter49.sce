// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 9")
//Thermal conductivity of aluminium in W/(m*K)
k = 198;
//Length in m
L = 0.18;
//Breadth in m
b = 0.104;
//Initial temperature in °C
Ti = 730;
//Temperature of surrounding in °C
Tinfinity = 30;
//Heat transfer coefficient in W/(m^2*K)
h = 1100;
//Thermal diffusivity in m^2/s
alpha = 8.1*(10^(-5));
//Given time in seconds
t = 100;
//Bar can be considered to be an intersection of two infinite plates of
//thickness L1 and L2 in m
L1 = L/2;
L2 = b/2;
//For plate 1
//Fourier number
Fo1 = (alpha*t)/(L1^2);
//Biot number
Bi1 = (h*L1)/k;
//From fig. 4.11, at this Fo and (1/Bi), we have dimensionless temperature
//ratio to be 0.7
//For plate 2
//Fourier number
Fo2 = (alpha*t)/(L2^2);
//Biot number
Bi2 = (h*L2)/k;
//From fig. 4.11, at this Fo and (1/Bi), we have dimensionless temperature
//ratio to be 0.47
//Therefore combined dimensionless temperature ratio is multiply of two
z = 0.47*0.7;
//Temperature in °C
T = Tinfinity+z*(Ti-Tinfinity);
disp("Tempearture of bar in °C")
T
