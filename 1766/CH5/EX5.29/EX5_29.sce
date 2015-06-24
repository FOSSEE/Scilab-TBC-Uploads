clc;funcprot(0);//Example 5.29
//Initilisation of Variables
L=0.1;.......//Length of duct in m
W=0.02;.......//Width of duct in m
T=445;..........//Duct wall temperature in K
m=4.17;.........//Mass flow rate of water in m/s
Tmi=295;.....//Inlet Temperature of water in K
Tmo=425;.....//Oulet Temperature of water in K
//Properties of water
Pr=1.64;.......//Prandtl number
mu=265*10^-6;......//Viscocity in kg/m s
K=683*10^-6;........//Thermal conductivity in W/mK
Cp=4.226;.....//Specific heat capacity in kJ/kgK
muw=158*10^-6;......//Viscocity in kg/m s
//calculation
A=L*W;..........//Area of duct in m^2
P=2*(L+W);........//Perimeter of duct in m^2
Dh=(4*A)/(P);.......//Hydraulic diameter of duct in m
Re=(m*Dh)/(A*mu);.........//Reynolds number
Nu=0.023*Re^0.8*Pr^0.4;........//Nusselt number
h=Nu*K/Dh;.........//Heat transfer coefficient in W/m^2 K
disp(h,"Heat transfer coefficient in W/m^2 K:")
