//Part A Chapter 1 Example 3
clc;
clear;
close;
format('v',7);
Patm=101;//kPa
rho=13550;//kg/m^3
g=9.78;//m/s^2
h=30*10^-2;//m
//Gauge pressure
Pgauge=rho*g*h/1000;//kPa
//Actual Pressure
Pactual=Pgauge+Patm;//kPa
disp("Actual pressure of air = "+string(Pactual)+" kPa");
