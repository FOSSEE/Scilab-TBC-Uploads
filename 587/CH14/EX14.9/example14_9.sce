clear;
clc;

//Example14.9[Measuring Diffusion Coefficient by the Stefan tube]
//Given:-
D=0.03;//Diameter of tube[m]
P=83.5;//Atmospheric Pressure at an elevation of 1600m[kPa]
T=20+273;//Ambient temperature[K]
R=8.314;//Universal Gas Constant[kPa.m^3/kmol.K]
P_vapor0=2.34;//The saturation pressure of water at 20 degree Celcius[kPa]
M_vapor=18;//Molar mass of water vapor[kg/kmol]
x=0.4;//Distance from water surface to the open end of the tube[m]
//Solution:-
//water vapor is species A
yA0=P_vapor0/P;
disp(yA0,"The mole fraction of water vapor (species A) at the Interface is")
yAL=0;//mole fraction of water vapor on the top of the tube
C=P/(R*T);//[kmol/m^3]
A=%pi*(D^2)/4;//[m^2]
disp("m^2",A,"The cross sectional area of tube")
m_vapor=(1.23*10^(-3))/(15*24*3600);//Rate of evaporation [kg/s]
N_vapor=m_vapor/M_vapor;
disp("kmol/s",N_vapor,"The molar flow rate of vapor is")
D_AB=(N_vapor/A)*(x/C)/log((1-yAL)/(1-yA0));
disp("m^2/s",D_AB,"Binary diffusion coefficient of water vapor in air at 20 degree Celcius and 83.5kPa")