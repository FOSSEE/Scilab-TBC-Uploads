clc;funcprot(0);//Example 5.8
//Initilisation of Variables
T=305;......//Temperature of engine oil in K
Tp=325;....//Temperature of the flat plate in K
Tb=315;...//Bulk mean temperature in K
rho=876;....//Density of engine oil at Bulk mean temperature in kg/m^3
L=0.4;...........//Length of the plate in m
mu=24*10^-5;.....//Viscocity of engine oil at Bulk mean temperature in m^2/s
K=0.144;.......//Thermal conductivity of engine oil at Bulk mean temperature in W/mK
Pr=2870;......//Prandtl no of engine oil at Bulk mean temperature
W=0.3;.........//Width of the plate in m
u=2;.........//Veocity of engine oil in m/s
//Calculations
Re=u*L/mu;........//Reynolds no
Nu=(0.3387*(Re^0.5)*(Pr^(1/3)))/((1+(0.0468/Pr)^(2/3))^0.25);.......//Nusselt no
h=Nu*K/L;.........//Heat transfer co efficient in W/m^2K
ha=2*h;............//Average Heat transfer co efficient in W/m^2K
Q=ha*L*W*(Tp-T);..........//Rate of heat transfer in W
disp(Q,"Rate of heat transfer in W:")
