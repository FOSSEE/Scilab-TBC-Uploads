clc;funcprot(0);//Example 5.11
//Initilisation of Variables
Ta=30;.....//Temperature of air in degrees celcius
p=1;...//Pressure of air in bar
D=0.015;...//Diameter of cylinder in m
U=4;........//Velocity of air in m/s
Ts=80;......//Surface temperature of sphere at degrees celcius
//Properties of air at Ta
rho=1.165;......//Density in kg/m^3
mu=16.0*10^-6;......//Viscocity in m^2/s
Pr=0.701;........//Prandtl no
K=0.02675;........//Thermal conductivity in W/mK
//calculation
Re=(U*D)/mu;..............//Reynolds no
Ma=18.63*10^-6;...........//viscosity in NS/m^2
Ms=21.08*10^-6;..........//viscosity in NS/m^2
Nu=2+[(0.4*Re^0.5)+(0.06*Re^(2/3))]*Pr^0.4*(Ma/Ms)^(1/4);............//Nusselt number
h=(Nu*K)/D;.........//Heat transfer co efficient in W/m^2K
Q=h*4*%pi*(D^2/4)*(Ts-Ta);............//Heat transfer per unit length of pipe
disp(Q,"Heat loss per unit length of cylinder:")
