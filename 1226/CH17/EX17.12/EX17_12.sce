clc;funcprot(0);//EXAMPLE 7.12
// Initialisation of Variables
N=1800;...................//Engine rpm
l=0.11;...................//Engine stroke in m
d=0.085;..................//Engine bore in m
ma=0.56;..................//Air flow rate in kg/min
BP=6;.....................//Brake power developed in kW
afr=20;...................//Air fuel ratio
C=42550;..................//Calorific value of fuel in kJ/kg
rhof=1.18;................//Density of fuel in kg/m^3
//calculations
V=(%pi/4)*d*d*l*(N/2);.....................//Volume displacemt in m^3/min
Ma=V*rhof;.................................//Mass of air in kg/min
etaV=ma/Ma;................................//Volumetric efficiency
fc=ma/afr;.................................//Fuel concumption
bsfc=(fc*60)/BP;...........................//Brake specific fuel consumption in kg/kWh
disp(etaV*100,"The volumetric efficiency (in %):")
disp(bsfc,"Brake specific fuel consumption (in kg/kWh):")
