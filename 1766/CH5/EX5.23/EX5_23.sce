clc;funcprot(0);//Example 5.23
//Initilisation of Variables
Ta=20;.....//Temperature of air in degrees celcius
D=2.5*10^-2;...//Diameter of tube in m
U=0.5;........//Velocity of air in m/s
Ts=100;......//Surface temperature of sphere at degrees celcius
Sp=5*10^-2;...............//Space in perpenducular direction in m
Sn=3.75*10^-2;.............//Space in parallel direction in m
//Properties of air at Ta
rho=1000;......//Density in kg/m^3
mu=1.006*10^-6;......//Viscocity in m^2/s
Pr=7.02;........//Prandtl no
K=0.5978;........//Thermal conductivity in W/mK
//calculation
Sd=[Sn^2+((Sp/2)^2)]^(0.5);..........//
Umax=(U*Sp)/(2*(Sd-D));..........//Maximum Velocity in m/s
Re=(Umax*D)/mu;...........//Reynolds number
C=0.35*(Sp/Sn)^0.2;..........//Constant
m1=0.6;.............//Coeffient
Nu=C*Re^m1*Pr^0.36*(Pr/1.74)^0.25;.........//Nusselt number
h=(Nu*K)/D;.........//Heat transfer co efficient for 20 rows of tubes in W/m^2K
disp(h,"Actual heat transfer coefficient for 20 rows of tubes in W/m^2K:")
