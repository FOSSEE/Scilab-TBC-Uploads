clear;
clc;
funcprot(0);

//given data
P = 20;//power required in kW
cx1 = 7.5;//steady wind speed in m/s
rho = 1.2;//density in kg/m^3
Cp = 0.35;
eta_g = 0.75;//output electrical power
eff_d = 0.85;//electrical generation efficiency

//Calculations
A2 = 2*P*1000/(rho*Cp*eta_g*eff_d*cx1^3);
D2 = sqrt(4*A2/%pi);

//Results
printf('The diameter = %.1f m.',D2);
