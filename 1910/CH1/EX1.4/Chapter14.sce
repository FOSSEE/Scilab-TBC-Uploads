// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 4")
//The average forced convective heat transfer coefficient(hbr) is 200 W/( m^2 °C)
//The fluid temprature(Tinf) upstream of the cold surface is 100°C
//The surface temprature(Ts) is 20°C
hbr=200;
Tinf=100;
Ts=20;
//The rate of heat transfer per unit area is q
disp ("The rate of heat transfer per unit area q=hbr*(Tinf-Ts) in W/m^2")
q=hbr*(Tinf-Ts)
