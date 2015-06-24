clc;funcprot(0);//Example 5.30
//Initilisation of Variables
m=21.6;.........//Mass flow rate of water in m/s
Tmi=475;.....//Inlet Temperature of liquid metal in K
D=0.1;...//Diameter of tube in m
Tw=515;...........//Temperature of wall in K
//Properties of metal
rho=7.7*10^3;......//Density in kg/m^3
mu=8*10^-8;......//Viscocity in m^2/s
K=12;........//Thermal conductivity in W/mK
Cp=130;.....//Specific heat capacity in J/kg degrees celcius
Pr=0.011;........//Prandtl number
//calculation
A=%pi*(D^2/4);.......//Area of tube in m^2
Re=(((m*1000)/3600)/(rho*A))*(D/mu);..........//Reynolds number
Nu=0.625*(Re*Pr)^0.4;.......//Nusselt number for fully developed condition 
h=Nu*K/D;.........//Heat transfer coefficient when liquid metal flows at rate of 21.6 tones/hr in W/m^2 K
disp(h,"Heat transfer coefficient when liquid metal flows at rate of 21.6 tones/hr in W/m^2 K:")
