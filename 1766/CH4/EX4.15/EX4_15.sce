clc;funcprot(0);//EXAMPLE 4.15
// Initialisation of Variables
d=0.002;..........//Diameter of wire in mm
T=124;..........//Temperature of the wire in degree celsius
Ta=30;........//Temperature of room in degree celsius
//Calculations
Tf=(T+Ta)/2;............//Film temperature in degree celsius
g=9.8;........//Acceleration due to gravity in m^2/s
B=1/(Tf+273);.......//Temp inverse in Kelvin inverse for film temp
K=0.0291;...........//Thermal conductivity in W/mK of air at film temp
delT=T-Ta;........//Temperature difference 
mu=2.12*10^-5;..........//Viscosity in m^2/s at film temp
Pr=0.99;..........//Prandlt no for air at film temperature
Ra=(g*B*delT*d*d*d*Pr)/(mu^2);.........//Raleigh Number at film temp for air
Nu=0.855*(Ra^0.148);...........//Nusselt no at film temp for air
h=(Nu*K)/d;..........//Convective heat transfer co efficient in in W/m^2K when wire is in air
Q=h*(%pi)*d*delT;............//Heat transfer rate in W when wire is in air
disp(Q,"The heat transfer rate (when wire is present in air) in W:")
Ra1=168.15;.............//Raleigh Number at film temp for carbon dioxide
Nu1=1.995;................//Nusselt no at film temp for carbon dioxide
h1=20.42;.............//Convective heat transfer co efficient in in W/m^2K when wire is in carbon dioxide
Q1=h1*(%pi)*d*delT;............//Heat transfer rate in W when wire is in carbon dioxide
disp(Q1,"The heat transfer rate (when wire is present in carbon dioxide) in W:")
