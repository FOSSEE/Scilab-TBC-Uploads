clear;
clc;
funcprot(0);

//given data
N = 300000;//in rpm
Q = 10;//in L/min
p01 = 3;//in bar
T01 = 300;//in K
p02 = 1;//in bar
rho = 1.16;//in kg/m^3
Cp = 1005;//in J/(kg.K)
gamma = 1.4;

//Calculations
N = N/60;//in rev/s
Qe = Q/(1000*60);
delh0s = Cp*T01*(1-(p02/p01)^((gamma-1)/gamma));
Ns = N*sqrt(Qe)*(delh0s^-0.75);
omega_s = Ns*2*%pi;
P = rho*Qe*delh0s;

//Results
printf('The specific speed of the turbine = %.3f rad.',omega_s);
printf('\n The type of machine required for this very low specific speed is a Pelton wheel.');
printf('\n The power consumption of the turbine = %.1f W.',P);
printf('\n The majority of this power will be dissipated as heat through friction in the bearings, \n losses in the Pelton wheel and friction with the tooth.')
