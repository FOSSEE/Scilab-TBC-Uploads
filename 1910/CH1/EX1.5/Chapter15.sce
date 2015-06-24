// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 5")
//The average heat transfer coefficient(hbr) is 800 W/(m^2°C)
//The surface temprature of heat exchanger is 75°C and air temprature is 25°C so deltaT=(75-25)
//The amount of heat exchanged(Q) is 20 MJ/h
//The heat exchanger surface area(A) is given by A=Q/(hbr*∆T)
hbr=800;
deltaT=(75-25);
Q=20;
disp("The heat exchanger surface area(A)in m^2 required for 20 MJ/h of heating is ")
A = (Q*10^6)/(3600*hbr*deltaT)
