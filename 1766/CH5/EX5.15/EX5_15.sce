clc;funcprot(0);//Example 5.15
//Initilisation of Variables
D=0.03;.....//Diameter of sphere in m
Ts=350;....//Surface Temparature of sphere in K
Ta=250;....//Temparature of air in K
U=25;....//Velocity of air in m/s
//Properties of air at 300K
rho=1.177;......//Density in kg/m^3
mu=16.84*10^-6;......//Viscocity in m^2/s
Pr=0.708;........//Prandtl no
K=0.0262;........//Thermal conductivity in W/mK
M=1.983*10^-5;..........//Viscosity in NS/m^2
//calculation
//cylinder
Rec=(U*D)/mu;....//reynolds number
Nuc=((0.4*Rec^0.5)+(0.06*Rec^(2/3)))*Pr^0.4;............//Nusselt number
hc=(Nuc*K)/D;...//Heat transfer coefficient of circular cylinder in W/m^2 K
Qc=hc*%pi*D*(Ts-Ta);....//Heat transfer of circular cylinder in W
disp(hc,"Heat transfer coefficient of circular cylinder in W/m^2 K")
disp(Qc,"Heat transfer rate of circular cylinder in W:")
//sphere
Res=(U*D)/mu;....//reynolds number
Nus=2+[(0.4*Res^0.5)+(0.06*Res^(2/3))]*Pr^0.4;............//Nusselt number
hs=(Nus*K)/D;...//Heat transfer coefficient of sphere in W/m^2 K
Qs=hs*%pi*D^2*(Ts-Ta);....//Heat transfer rate of circular sphere in W
disp(hs,"Heat transfer coefficient of Sphere in W/m^2 K")
disp(Qs,"Heat transfer rate of circular sphere in W:")
