clc;funcprot(0);//EXAMPLE 4.25
// Initialisation of Variables
d=0.002;..........//Diameter of wire in mm
T=402;..........//Temperature of the wire in K
Ta=302;........//Temperature of air in K
//Calculations
Tf=(T+Ta)/2;............//Film temperature in degree celsius
g=9.8;........//Acceleration due to gravity in m^2/s
B=1/(Tf);.......//Temp inverse in Kelvin inverse for film temp
K=0.0304;...........//Thermal conductivity in W/mK of air at film temp
delT=T-Ta;........//Temperature difference 
mu=2.109*10^-5;..........//Viscosity in m^2/s at film temp
Pr=0.71;..........//Prandlt no for air at film temperature
Ra=(g*B*delT*d*d*d*Pr)/(mu^2);.........//Raleigh Number at film temp for air
Nu=1.02*(Ra^0.151);...........//Nusselt no
h=(Nu*K)/d;..........//Convective heat transfer co efficient in in W/m^2K
Q=h*d*delT;............//Heat heat loss per unit length in W
disp(Q,"The heat loss per unit length in W:")
//The Answer arraived in textbook is found to be wrong when calculated
