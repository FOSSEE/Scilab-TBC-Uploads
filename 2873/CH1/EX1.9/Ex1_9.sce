// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 9")
RHOm=13.6*10^3;//density of mercury in kg/m^3
RHOw=1000;//density of water in kg/m^3
h1=76*10^-2;//barometer reading in m of mercury
h2=2*10^-2;//height raised by water in manometer tube in m 
h3=10*10^-2;//height raised by mercury in manometer tube in m 
g=9.81;//acceleration due to gravity in m/s^2
disp("balancing pressure at plane BC in figure we get")
disp("Psteam+Pwater=Patm+Pmercury")
disp("now 1.atmospheric pressure(Patm)in pa")
disp("Patm=RHOm*g*h1")
Patm=RHOm*g*h1
disp("2.pressure due to water(Pwater)in pa")
disp("Pwater=RHOw*g*h2")
Pwater=RHOw*g*h2
disp("3.pressure due to mercury(Pmercury)in pa")
disp("Pmercury=RHOm*g*h3")
Pmercury=RHOm*g*h3
disp("using balancing equation")
disp("Psteam=Patm+Pmercury-Pwater")
disp("so pressure of steam(Psteam)in kpa")
disp("Psteam=(Patm+Pmercury-Pwater)/1000")
Psteam=(Patm+Pmercury-Pwater)/1000
