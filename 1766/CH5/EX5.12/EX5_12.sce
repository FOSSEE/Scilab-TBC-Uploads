clc;funcprot(0);//Example 5.12
//Initilisation of Variables
Ta=20;.....//Temperature of air in degrees celcius
D=2.5*10^-2;...//Diameter of cylinder in m
U=5;........//Velocity of air in m/s
Ts=60;......//Surface temperature of sphere at degrees celcius
Sp=4*10^-2;...............//Space in perpenducular direction in m
Sn=4*10^-2;.............//Space in parallel direction in m
//Properties of air at Ta
rho=1.205;......//Density in kg/m^3
mu=15.06*10^-6;......//Viscocity in m^2/s
Pr=0.703;........//Prandtl no
K=0.02593;........//Thermal conductivity in W/mK
M=18.14;..........//Viscosity in NS/m^2
//calculation
Umax=(U*Sp)/(Sn-D);..........//Maximum Velocity in m/s
Re=(Umax*D)/mu;...........//Reynolds number
Nu=0.25*Re^0.62;.........//Nusselt number
h=(Nu*K)/D;.........//Heat transfer co efficient in W/m^2K
C1=0.94;..........//Correction factor
ha=C1*h;...........//Actual heat transfer coefficient in W/m^2K
disp(ha,"Actual heat transfer coefficient in W/m^2K:")
