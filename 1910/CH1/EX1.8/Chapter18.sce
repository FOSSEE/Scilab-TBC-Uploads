// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 8")
//The temprature(T) of asphalt pavement = 50°C
//The stefan-Boltzman constant(sigma)=5.6697*10^-8 W/(m^2*K^4).
T=50;
sigma=5.6697*10^-8;
//The emitted radiant energy per unit surface area is given by (Eb/A)=sigma*T^4
disp ("The emitted radiant energy per unit surface area is given by Eb/A=sigma*T^4 in W/m^2")
//Let Eb/A=F
F=sigma*(50+273.15)^4
