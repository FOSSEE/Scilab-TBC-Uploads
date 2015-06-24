clc;funcprot(0);//Example 5.28
//Initilisation of Variables
Tmi=525;.....//Inlet Temperature of air in K
Tmo=475;.....//Oulet Temperature of air in K
D=0.01;...//Diameter of pipe in m
U=1.5;........//Velocity of air in m/s
//Properties of water at 500 K
rho=0.706;......//Density in kg/m^3
mu=2.67*10^-5;......//Viscocity in Ns/m^2
K=4.04*10^-5;........//Thermal conductivity in W/mK
Cp=1.03;.....//Specific heat capacity in kJ/kgK
//calculation
Re=(U*D*rho)/mu;..........//Reynolds number
Nu=4.36;.......//Nusselt number for fully developed condition 
h=Nu*K/D;.........//Heat transfer coefficient when water enters into the tube in W/m^2 K
disp(h,"Heat transfer coefficient when water enters into the tube in W/m^2 K:")
