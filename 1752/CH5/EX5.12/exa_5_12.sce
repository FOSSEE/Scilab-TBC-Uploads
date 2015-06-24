//Exa 5.12
clc;
clear;
close;
//given data
Cp=4179;// in J/kg-K
rho= 997;// in kg/m^3
V=2;// in m/s
miu= 855*10^-6;// in Ns/m^2
Pr=5.83;
k=0.613;
Do=6;//outer dia in cm
Di=4;//inner dia in cm
// de= 4*A/P = 4*%pi/4*(Do^2-Di^2)/(%pi*(Do+Di))
// or
de= Do-Di;// in cm
de=de*10^-2;// in m
Re= rho*V*de/miu;
// Since Re > 2300, hence flow is turbulent. Hence using Dittus Boelter equation
// Nu= 0.023*Re^0.8*Pr^0.4 =h*de/k
h= 0.023*Re^0.8*Pr^0.4*k/de;// in W/m^2K
disp(floor(h),"Heat transfer coefficient in W/m^2K");
