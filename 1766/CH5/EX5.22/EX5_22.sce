clc;funcprot(0);//Example 5.22
//Initilisation of Variables
Tmi=120;.....//Initial Temperature of sodium in degrees celcius
Tmo=150;.....//Finale Temperature of sodium in degrees celcius
D=0.025;...//Diameter of tube in m
m=2;........//Mass flow rate of mercury in kg/s
Tw=60;......//Temperature of tube wall at degrees celcius
Tm=(Tmi+Tmo)/2;......//Average temperature of water in degrees celcius
A=%pi*D^2/4;..........//Area of tube
//Properties of water at Tm
rho=928;......//Density in kg/m^3
mu=0.213*10^-6;......//Viscocity in m^2/s
Pr=1.241;........//Prandtl no
K=683.8;........//Thermal conductivity in W/mK
Cp=4.283;.....//Specific heat capacity in kJ/kgK
//calculation
U=m/(rho*A);........//Velocity of water in m/s
Re=(U*D)/mu;........//Reynolds number of water
Nu=0.023*Re^0.8*Pr^0.4;...........//Nusselt number of water
h=(Nu*K)/D;.........//Heat transfer co efficient of water in W/m^2K
disp(h,"Heat transfer co efficient of water in W/m^2K:")
//Properties of liquid sodium at Tm are
rhos=916;......//Density in kg/m^3
mus=0.594*10^-6;......//Viscocity in m^2/s
Prs=0.0087;........//Prandtl no
Ks=84.9;........//Thermal conductivity in W/mK
Cps=1.3565;.....//Specific heat capacity in kJ/kgK
Us=m/(rhos*A);........//Velocity of liquid sodium in m/s
Res=(U*D)/mus;........//Reynolds number of liquid sodium
Nus=5+0.025*(Res*Prs)^0.8;...........//Nusselt number of liquid sodium
hs=(Nus*Ks)/D;.........//Heat transfer co efficient of liquid sodium in W/m^2K
disp(hs,"Heat transfer co efficient of liquid sodium in W/m^2K:")
disp("Under the similar conditions, Heat  transfer coefficient for liquid sodium is > for water")
