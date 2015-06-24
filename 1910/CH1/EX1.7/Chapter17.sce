// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 7")
//The temprature(T) of brick wall after sunset is 50°C
//The emissity value(emi)=0.9
//The radiant heat flux per square meter =E/A Where E is radiant heat energy and A is area of brick wall.
//The stefan-Boltzman constant(sigma)=5.6697*10^-8 W/(m^2*K^4).
T=50;
emi=.9;
sigma=5.6697*10^-8;
disp("The heat flux per square meter is given by E/A=emi*sigma*T^4 in W/m^2")
//Let E/A=F
F=emi*sigma*(T+273.15)^4
