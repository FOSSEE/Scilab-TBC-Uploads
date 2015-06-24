clc;funcprot(0);......//Example 4.2
//Initialization of variables
L=4;........//Vertical height of the plate in m
W=10;......//Width of the plate in m
Tw=333;....//Temperature of the plate in K
Ta=283;....//Temperature of air in K
v=16.5*10^-6;.......//Viscosity in m^2/s
K=0.027;.......//Thermal conductivity in W/mK
g=9.81;....//Gravitational constant
Pr=0.7;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf);........//Temp inverse in K^-1
Gr=(g*B*(Tw-Ta)*L*L*L)/(v^2);.......//Grashoff No
Nu=0.13*(Gr*Pr)^(1/3);............//Nusselt no
h=(Nu*K)/L;.........//Heat transfer co-efficient in W/m^2 K
Q=h*L*W*(Tw-Ta);.........//Rate of heat transfer in W
disp(Q/1000,"Rate of heat transfer in kW:")
