// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 3")
h=30*10^-2;// pressure of compressed air in m of mercury
Patm=101*10^3;//atmospheric pressure in pa
g=9.78;//acceleration due to gravity in m/s^2
rho=13550;//density of mercury at room temperature in kg/m^3
disp("pressure measured by manometer is gauge pressure(Pg)in kpa")
disp("Pg=rho*g*h/10^3")
Pg=rho*g*h/10^3
disp("actual pressure of the air(P)in kpa")
disp("P=Pg+Patm/10^3")
P=Pg+Patm/10^3
