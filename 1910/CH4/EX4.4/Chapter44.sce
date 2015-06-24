// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 4")
//Diameter of glass in m
d = 50*(10^(-3));
//radius in m
r = d/2;
//Height of milk in glass in m
H = 0.1;
//Initial temperature of milk in °C
T = 80;
//Cold water temperature in °C
Tf = 25;
//Heat transfer coefficient in W/(m^2*°C)
h = 100;
//Thermal conductivity of milk in W/(m*K)
k = 0.6;
//Density of milk in kg/m^3
rho = 900;
//Specific heat in J/(Kg*K)
c = 4.2*(10^3);
//Since the milk temperature is always maintained as constant.
//Therefore it can be assumed as lumped paramteter analysis.
//Time constant n seconds
tcs = (((((rho*c)*%pi)*r)*r)*H)/(((h*%pi)*d)*H);
//Time constant in minutes
tc = tcs/60;
//Calculating from eq. 4.3 time taken to cool milk from 80°C to 30°C
t = -tc*log((30-Tf)/(T-Tf));
disp("Time required to cool milk in minutes")
t
//Energy transferred during cooling
E = (((h*%pi)*d)*H)*integrate("(80-25)*exp(-t/472.5)",'t',0,60*t);
disp("Energy required for cooling in KJ")
E = E/1000
