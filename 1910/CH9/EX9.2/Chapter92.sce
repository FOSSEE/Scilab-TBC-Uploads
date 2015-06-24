// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 2")
//Steam is condensed at temprature(Tg=100°C) on the outer surafce of a horizontal tube of length(L=3m) and diameter(d)=50mm or .05m
Tg=100;
L=3;
D=0.05;
//The Tube surface is maintained at temprature,Tw=90°C 
Tw=90;
//tf is mean film temprature
disp("The mean film temprature in°C is")
tf=(Tg+Tw)/2
//The properties of condensate are density(rho=962kg/m^3),conductivity(k=0.677W/(m*K)),viscosity(mu=3*10^-4 kg/(m*s))
rho=962;
k=0.677;
mu=3*10^-4;
//The value rhov=0.598kg/m^3 and hfg=2.27*10^6J/kg at 100°C are found from steam table
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
rhov=0.598;//vapour density
hfg=2.27*10^6;//enthalpy of vaporisation
//The average heat transfer coefficient hbar=0.745*[(rho*(rho-rhov)*g*hfg*k^3)/(mu*D*(Tg-Tw))]^(1/4)
disp("The average heat transfer coefficient in W/(m^2*K)")
hbar=0.745*[(rho*(rho-rhov)*g*hfg*k^3)/(mu*D*(Tg-Tw))]^(1/4)
//The rate of condensation is given by mdotc=(hbar*(pi*D*L)*(Tg-Tw))/hfg
disp("The total rate of condensation in kg/s")
mdotc=(hbar*(%pi*D*L)*(Tg-Tw))/hfg
disp("Check for reynolds no.")
//For a horizontal tube having length,L,perimeter is P=2L
P=2*L;
//Re is reynolds number
disp("Reynolds number is")
Re=(4*mdotc)/(mu*P)
disp("The flow is laminar")













