clc;funcprot(0);//Example 5.13
//Initilisation of Variables
L=3;......//Length of rectangular box in m
W=2;...//Width of rectangular box in m
H=7;.......//height of rectangular box in m
Ts=290;....//Surface Temparature of box in K
Ta=330;....//Temparature of air in K
U=16.67;....//Velocity of air in m/s
//Properties of air at 310 K
rho=1.147;......//Density in kg/m^3
mu=16.48*10^-6;......//Viscocity in m^2/s
K=0.0271;........//Thermal conductivity in W/mK
Cp=1.005;......//Specific heat in kJ/kg K
//calculation
Re=(U*H)/mu;....//reynolds number
Pr=(Cp*rho*mu)/(K*10^-3);.....//Prandtl number
Nua=0.036*Re^(0.8)*Pr^(1/3);....//Nusselt number
ha=(Nua*K)/H;...//Heat transfer coefficient in W/m^2 K
Q=ha*H*2*(L+W)*(Ta-Ts)*10^-3;....//Heat transfer rate from plate in W
disp(Q,"Heat transfer rate from plate in W:")
