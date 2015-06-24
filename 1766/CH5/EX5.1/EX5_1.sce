clc;funcprot(0);//Example 5.1
//Initilisation of Variables
Tw=30;....//Surface temparature of plate in degrees celcius
Ta=300;....//Temparature of air in degrees celcius
P=0.06*10^5;...//Pressure of air in bar
U=10;....//Velocity of flat plate in m/s
K=0.0364;...//Thermal conductivity of air in W/m*K
Pr=0.687;...//Prandtl number
M=24.6*10^-6;....//dynamic viscosity in N s/m^2
R=287;...//
L=1;......//Length of flat plate in m
A=1;...//Area of flat plate in m
//calculation
Tf=(Ta+Tw)/2;....//Filim temparature in degrees celcius
d=P/(R*(Tf+273));....//Density of air in kg/m^3
Re=(d*U*L)/M;....//Reynolds number
Nua=0.664*(Re)^0.5*(Pr)^0.333;....//Nusselt number at location
h=(Nua*K)/L;.....//Heat transfer coefficient in W/m^2
Q=h*A*(Ta-Tw);...//Heat transfer rate per unit width in W
disp(Q,"Heat transfer rate per unit width in W:")
