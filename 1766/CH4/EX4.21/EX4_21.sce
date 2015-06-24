clc;funcprot(0);......//Example 4.21
//Initialization of variables
D=0.02;.........//Diameter of the tube in m
t=0.03;...........//thickness of the tube in m
m=0.06;.......//Mass flow rate in kg/s
Tw=50;........//Temperature of oil after heated in degrees celcius
Ta=30;.............//Temperature of oil in degrees celcius
p=1;.........//Pressure of steam in bar
//properties of oil at 40 d C 
Cp=1964;........//Specific heat in J/kg K
rho=876;........//Density in kg/m^3
v=0.210;.......//Viscosity in N s/m^2
K=0.144;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=2870;......//Prandlt no
//Calculations
Re=(4*m)/(v*%pi*D);........//Reynolds numberoff No
Nu=3.66;............//Nusselt no when the flow is laminar
h=Nu*(K/D);.........//Heat transfer co-efficient in W/m^2 K
disp(h,"Rate of heat loss in kW:")
