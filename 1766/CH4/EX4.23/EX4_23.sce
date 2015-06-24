clc;funcprot(0);......//Example 4.23
//Initialization of variables
D=3*10^-3;.........//Diameter of the capillary holes in m
L=0.5;...........//Length of the capillary holes in m
U=0.3;.......//Velocity of water in kg/s
T=355;...........//Temperature of devise casing in K
T1=333;........//Inlet Temperature of water in K
//properties of water at 333K
Cp=4181;........//Specific heat in J/kg K
rho=983;........//Density in kg/m^3
mu=4.72*10^-4;..........//Viscosity in N s/m^2
mus=3.56*10^-4;........//Viscosity at 355 K in N s/m^2
K=0.658;.......//Thermal conductivity in W/mK
Pr=3;......//Prandlt no
//Calculations
Red=(U*D*rho)/(mu);........//Reynolds number
Nud=186*[(Red*Pr*D)/L]^(0.33)*(mu/mus)^0.14;.........//Nusselt number
hc=(K*Nud)/D;........//heat transfer co-efficient in W/m^2 K
m=rho*((%pi*D^2)/4)*U;.........//Mass flow rate in kg/s
//Q=hc*%pi*D*L*(T-(T1+T2)/2);Q=m*Cp*T1-T2;......//Heat transfer rate in W
//By Trail & Error Method 
T2=345;..........//Outlet temperature of water in K
disp(T2,"Outlet temperature of water in K:")
