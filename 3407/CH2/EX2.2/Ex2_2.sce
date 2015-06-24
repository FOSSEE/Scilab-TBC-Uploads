clear all;
clc;
funcprot(0);

//given data
T01 = 1200;//Stagnation temperature at which gas enters in K
p01 = 4;//Stagnation pressure at which gas enters in bar
c2 = 572;//exit velocity in m/s
p2 = 2.36;//exit pressure in bar
Cp = 1.160*1000;//in J/kgK
gamma = 1.33

//calculations
T2 = T01 - 0.5*(c2^2)/Cp;//Calculation of exit temperature in K
Noz_eff = ((1-(T2/T01))/(1-(p2/p01)^((gamma-1)/gamma)));//Nozzle efficiency

//Results
printf('Nozzle efficiency is %.4f.',Noz_eff);
