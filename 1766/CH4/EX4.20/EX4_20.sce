clc;funcprot(0);......//Example 4.20
//Initialization of variables
D=0.03;.........//Inner Diameter of the tube in m
m=0.01;.......//Mass flow rate of water in kg/s
Ti=20;........//Temperature of water in degrees celcius
To=30;.............//Temperature of water after heated in degrees celcius
q=10000;.......//Uniform flux in W/m^2
//properties of water at 25 degrees celcius
v=910*10^-6;.......//Viscosity in N s/m^2
K=0.608;.......//Thermal conductivity in W/mK
rho=997;.........//Density in kg/m^2
Cp=4180;............//Specific heat in J/kg K
//Calculations
Red=(4*m)/(%pi*D*v);...........//Reynolds number
disp(Red,"(i)Reynolds number:")
Nu=4.36;........//Nusselt number for uniform uniform heat flux
hc=Nu*K/D;........//Heat transfer coefficient in W/m^2 K
disp(hc,"(ii)Heat transfer coefficient in W/m^2 K:")
//the length of pipe needed for a temperature rise  30 d c is obtained from heat balance
L=(m*Cp*(To-Ti))/(%pi*D*q)//Length of pipe needed in m
disp(L,"(iii)Length of pipe needed in m:")
