clc;funcprot(0);//Example 5.10
//Initilisation of Variables
Ta=40;.....//Temperature of air in degrees celcius
p=1;...//Pressure of air in bar
D=0.05;...//Diameter of cylinder in m
U=40;........//Velocity of air in m/s
Tw=140;......//Temperature of cylinder at degrees celcius
//calculations
Tf=(Tw+Ta)/2;..........//Filim temperature at degrees celcius
//Properties of air at Tf=90
rho=1.0;......//Density in kg/m^3
mu=21.09*10^-6;......//Viscocity in m^2/s
Pr=0.692;........//Prandtl no
K=30.47*10^-3;........//Thermal conductivity in W/mK
Re=(U*D)/mu;..............//Reynolds no
Nu=0.0266*Re^0.805*Pr^0.333;............//Nusselt number
h=(Nu*K)/D;.........//Heat transfer co efficient in W/m^2K
Q=h*%pi*D*(Tw-Ta);............//Heat transfer per unit length of pipe
disp(Q,"Heat loss per unit length of cylinder:")
