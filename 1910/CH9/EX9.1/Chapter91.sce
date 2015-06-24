// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 1")
//A vertical cooling fin, Approximately a flat plate length,(L)=0.4m high is exposed to saturated steam(temprature,Tg=100°C) at atmospheric pressure.
L=0.4;
Tg=100;
//The fin is maintained at temprature,Tw=90°C by cooling water.
Tw=90;
disp("The properties of condensate(liquid water) are evaluated at the mean film temprature ")
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
rhov=0.598;//rhov is vapour density
hfg=2.27*10^6;//hfg is enthalpy of vaporisation
//The average heat transfer coefficient over length L is hbarL=0.943*[(rho*(rho-rhov)*g*h*L^3)/(mu*k*(Tg-Tw))]^(1/4)
disp("The average heat transfer coefficient over length L in W/(m^2*K)")
hbarL=0.943*[(rho*(rho-rhov)*g*hfg*k^3)/(mu*L*(Tg-Tw))]^(1/4)
//The rate of heat transfer per unit width is Q=hbarL*L*(Tg-Tw)
disp("The rate of heat transfer per unit width in W/m ")
Q=hbarL*L*(Tg-Tw)
//The rate of condensation is given by mdotc=(Q/hfg)
disp("The total rate of condensation in kg/(s*m)")
mdotc=(Q/hfg)
disp("We have to check whether the flow is laminar or not ")
//Reynolds no is given by ReL=(4*mdotc)/(mu)
disp("Reynolds no. is")
ReL=(4*mdotc)/(mu)
disp("Therefore the flow is laminar and hence the use of the equation is justified")












