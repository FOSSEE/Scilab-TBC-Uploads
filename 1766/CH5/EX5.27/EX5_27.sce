clc;funcprot(0);//Example 5.27
//Initilisation of Variables
D=0.03;.......//Diameter of tube in m
f=0.0218;......//Friction factor 
Tw=365;........//Temperature of tube wall in K
Tmi=310;.....//Inlet Temperature of water in degrees celcius
Tmo=340;.....//Outlet Temperature of water in degrees celcius
U=4;...//Velocity of water in m/s
n=0.11;..........//Constant wall temperature for heating of fluids
//Properties of water at 345 K
rho=978;.....//Density in kg/m^3
mu=4*10^-4;......//Viscocity in kg/m s
mub=5.55*10^-4;......//Viscocity of air in kg/m s
muw=2.81*10^-4;......//Viscocity of wall in kg/m s
Pr=2.54;........//Prandtl no
K=0.664;........//Thermal conductivity in W/m^2K
//calculation
Re=(U*D*rho)/mu;.........//Reynolds number
Nu=(((f/8)*Re*Pr)/(1.07+(12.7*(f/8)^(1/2)*(Pr^(2/3)-1))))*(mub/muw)^n;....//Nusselt number
h=(Nu*K)/D;.........//Heat transfer coefficient when water enters to a tube in W/m^2 K
disp(h,"Heat transfer coefficient when water enters to a tube in W/m^2 K:")
