clc;funcprot(0);//Example 5.21
//Initilisation of Variables
L1=1;....//Length 1 of tube in m
L2=3;....//Length 2 of tube in m
Tmi=40;...//Temperature of air in K
Tw=100;........//Temperature of tube wall in K
p=3*10^2;.....//Air pressure in bar 
D=0.05;......//Diameter of tube in m
U=6;...//Velocity of air in m/s
R=0.287;...//Universal gas contant in kJ/kg K
//Properties of air at Tmi
mu=19.12*10^-6;......//Viscocity in m^2/s
Pr=0.669;........//Prandtl no
K=0.02656;........//Thermal conductivity in W/mK
Cp=1005;.....//Specific heat capacity in kJ/kgK
//calculation
rho=p/(R*(Tmi+273));...//Density of air at 300 K
Re=rho*U*D/mu;....//Reynolds number 
Nu=0.023*Re^0.8*Pr^0.4;...........//Nusselt number of square pipe
h=(Nu*K)/D;.........//Heat transfer co efficient of in W/m^2K
//If length if tube is 1m
A=%pi*D*L1;..........//Area of tube when L=1 in m^2
m=((%pi*D^2)/4)*rho*U;..........//Mass flow rate in kg/s
Tmo1=((h*A*((2*Tw)-Tmi))+(m*Cp*Tmi))/((m*Cp)+(h*A));........//Outlet temperature of water when Length of tube is 1 m
deltT1=(Tmo1-Tmi);..........//Rise in temperature of air for tube length 1 in degrees celcius
Q1=m*Cp*deltT1;...........//Heat transfer rate for tube length 1 in W
disp(deltT1,"Rise in temperature of air for tube length 1 in degrees celcius:") 
disp(Q1,"Heat transfer rate for tube length 1 in W:")
//If length if tube is 3m
A2=%pi*D*L2;..........//Area of tube when L=1 in m^2
m2=((%pi*D^2)/4)*rho*U;..........//Mass flow rate in kg/s
Tmo2=((h*A2*((2*Tw)-Tmi))+(m*Cp*Tmi))/((m*Cp)+(h*A2));........//Outlet temperature of water when Length of tube is 1 m
deltT2=(Tmo2-Tmi);..........//Rise in temperature of air for tube length 1 in degrees celcius
Q2=m*Cp*deltT2;...........//Heat transfer rate for tube length 1 in W
disp(deltT2,"Rise in temperature of air for tube length 1 in degrees celcius:") 
disp(Q2,"Heat transfer rate for tube length 1 in W:")
//The Answer arraived in textbook is found to be wrong when calculated
