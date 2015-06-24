clc;funcprot(0);//Example 5.26
//Initilisation of Variables
L=1;....//Length 1 of tube in m
Ta=473;...//Temperature of air in K
Tw=30;........//Temperature of tube wall in K
p=2;.....//Air pressure in bar 
D=0.05;......//Diameter of tube in m
U=15;...//Velocity of air in m/s
R=0.287;...//Universal gas contant in kJ/kg K
//Properties of air at Ta
mu=2.57*10^-5;......//Viscocity in kg/m s
Pr=0.681;........//Prandtl no
K=0.0386;........//Thermal conductivity in W/mK
Cp=1.025;.....//Specific heat capacity in kJ/kgK
//calculation
rho=(101.325*p)/(R*Ta);...//Density of air at 300 K
Re=rho*U*D/mu;....//Reynolds number 
Nu=0.023*Re^0.8*Pr^0.4;...........//Nusselt number of square pipe
h=(Nu*K)/D;.........//Heat transfer co efficient of in W/m^2K
Q=h*%pi*D*(Tw);............//Heat transfer when air at 2 bar in W
disp(Q,"Heat transfer when air at 2 bar in W:")
