clc;funcprot(0);//EXAMPLE 11.1
// Initialisation of Variables
d=0.1;..................//Cylinder bore in m
l=0.12;................//Cylinder stroke in m
N=1800;..................//Engine rpm
d2=0.028;................//Throat diameter in m
Cda=0.8;................//Co efficient of air flow
etaV=0.75;..................//Volumetric efficiency
rhoa=1.2;................//Density of air in kg/m^3
n=4;.......................//No of cylinders
//Calculations
Vs=(%pi/4)*d*d*l*n;.................//Stroke Volume in m^3
Va=etaV*Vs;.......................//Actual volume per stroke in m^3
Vas=Va*(N/2)*(1/60);.............//Actual volume sucked per second
ma=Vas*rhoa;.........................//Air consumed in kg/sec
delp=((ma/(Cda*(%pi/4)*d2*d2))^2)/(2*rhoa);.............//Suction at throat in N/m^2
disp(delp,"Suction at throat (in N/m^2):")
