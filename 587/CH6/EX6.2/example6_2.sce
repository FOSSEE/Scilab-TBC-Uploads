clear;
clc;

//Example6.2[Finding Convection Coefficient from Drag Measurement]
//Given:-
//Properties of air
rho=1.204;//[kg/m^3]
Cp=1007;//[J/kg.K]
Pr=0.7309;//Prandtl number
w=2;//Width of plate[m]
L=3;//Characteristic length of plate[m]
v=7;//velocity of air[m/s]
Fd=0.86;//Total grag force[N]
//Solution:-
As=2*w*L;//Since both sides of plate are exposed to air flow[m^2]
//For flat plates drag force is equivalent to friction coefficient Cf
Cf=Fd/(rho*As*(v^2)/2);
h=(Cf*rho*v*Cp)/(2*(Pr^(2/3)));//[W/m^2.degree Celcius]
disp("respectively","W/m^2.degree Celcius",h,"and",Cf,"Friction Factor and average heat transfer coefficient are")
