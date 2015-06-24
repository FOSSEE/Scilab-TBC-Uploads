clc;funcprot(0);//Example 5.16
//Initilisation of Variables
Tmi=10;..........//Temperature of air degrees celcius
Tw=20;.............//Temperature of the depth wall in degrees celcius
H=0.3;...........//Height of the duct in m
w=0.5;.........//Width of the duct in m
L=10;............//Length of the duct in m
U=10;..........//Velocity of air in m/s
//Properties of air at 283K
rho=1.247;......//Density in kg/m^3
mu=17.65*10^-6;......//Viscocity in m^2/s
Pr=0.705;........//Prandtl no
Cp=1.005;.....//Specific heat capacity in kJ/kgK
K=25.12*10^-3;........//Thermal conductivity in W/mK
//calculation
Dh=(4*w*H)/(2*(w+H));.........//Effective diameter in m
Re=(rho*U*Dh)/mu;....//reynolds number
Nu=0.023*Re^0.8*Pr^0.4;...........//Nusselt number
h=(Nu*K)/Dh;..........//Heat transfer coefficient in W/m^2 K
m=H*w*U*rho;............//Mass flow rate in kg/s
As=2*(H*w)*U;............//Surface Area
a=-1;....//Constrain 1
b=2*Tw;....//Constrain 2
c=Tmi-((2*h*As)/(m*Cp))+(2*Tw*Tmi);...//Constrain 3
Tmo=poly(0,'Tmo');.........//Outlet temperature of air degrees celcius
p=a*Tmo^2-b*Tmo-c;
z=roots (p)
Q=m*Cp*[-z-Tmi];........//Heat transfer rate from wall to air in kW 
disp(Q,"Heat transfer rate from wall to air in kW:")
