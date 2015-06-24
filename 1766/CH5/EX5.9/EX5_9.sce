clc;funcprot(0);//Example 5.9
//Initilisation of Variables
T=295;......//Temperature of air in K
Tp=335;....//Temperature of the flat plate in K
Tb=315;...//Bulk mean temperature in K
cp=1.007;....//Specific heat capacity of air at Bulk mean temperature in kJ/kgK
L=1;...........//Length of the plate in m
mu=1.906*10^-5;.....//Viscocity of air at Bulk mean temperature in m^2/s
K=0.02723;.......//Thermal conductivity of air at Bulk mean temperature in W/mK
Pr=0.7;......//Prandtl no of air at Bulk mean temperature
u=30;.........//Veocity of air in m/s
R=0.287;...//Universal gas contant in kJ/kg K
W=1;.........//Width of the plate in m
p=101.325;.....//Pressure in KPa
//Calculations
rho=p/(R*Tb);...//Density of air at 315 K
Re=rho*u*L/mu;........//Reynolds no
Nu=(0.036*(Re^0.8)-871)*(Pr^(1/3));.....//Nusselt no
h=Nu*K/L;.........//Heat transfer co efficient in W/m^2K
Q=h*L*W*(Tp-T);..........//Rate of heat transfer in W
disp(Q,"Rate of heat transfer in W:")
//The Answer arraived in textbook is found to be wrong when calculated
