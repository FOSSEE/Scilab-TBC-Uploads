clc;funcprot(0);//Example 5.5
//Initilisation of Variables
x1=0.3;....//distance 1 in m
x2=0.5;....//distance 2 in m
L=1;...//Length of the flat plate in m
T=300;...//Temperature of air in K
p=1;.....//Air pressure in bar 
v=5;...//Velocity of air in m/s
mu=1.85*10^-5;...//Viscosity of air in kg/m s
R=0.287;...//Universal gas contant in kJ/kg K
//calculation
rho=p/(R*T);...//Density of air at 300 K
Re1=rho*v*x1/mu;....//Reynolds number at x=0.3 m 
Re2=rho*v*x2/mu;....//Reynolds number at x=0.5 m 
del1=4.64*x1/sqrt(Re1);....//Displacement thickness at x=0.3m
del2=4.64*x2/sqrt(Re2);....//Displacement thickness at x=0.5m
m=(5/8)*rho*v*(del2-del1);.....//mass flow rate in kg/s
disp(m,"mass flow rate in kg/s:")
