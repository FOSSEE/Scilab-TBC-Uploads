clc;funcprot(0);//Example 5.14
//Initilisation of Variables
D=0.02;.....//Diameter of sphere in m
Ts=350;....//Surface Temparature of sphere in K
Ta=300;....//Temparature of air in K
U=7;....//Velocity of air in m/s
//Properties of air at 27degrees
mu=15.69*10^-6;......//Viscocity in m^2/s
Ma=1.8462*10^-5;.......//dynamic viscosity in kg/ms
K=0.02624;........//Thermal conductivity in W/mK
Pr=0.708;......//Prandtl number
Mw=2.075*10^-5;...//dynamic viscosity in kg/ms
Tw=77;...........//Temperature of wall
//calculation
Re=(U*D)/mu;....//reynolds number
Nu=2+[(0.4*Re^0.5)+(0.06*Re^(2/3))]*Pr^0.4*(Ma/Mw)^(1/4);............//Nusselt number
h=(Nu*K)/D;...//Heat transfer coefficient in W/m^2 K
Q=h*4*%pi*(D/2)^2*(Ts-Ta);....//Heat transfer rate from plate in W
disp(Q,"Heat transfer rate from plate in W:")
