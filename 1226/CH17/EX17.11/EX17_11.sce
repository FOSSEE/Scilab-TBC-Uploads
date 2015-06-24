clc;funcprot(0);//EXAMPLE 17.11
// Initialisation of Variables
n=4;.......................//No of cylinders
k=0.5;.....................//Four stroke engine
r=8;.......................//Compression ratio
d=0.1;.....................//Engine bore in m
l=0.1;.....................//Engine stroke in m
etaV=0.75;.................//Volumetric efficiency
N=4800;....................//Engine rpm
afr=15;....................//Air fuel ratio
C=42000000;................//Calorific value of fuel
rhoa=1.12;.................//Atmospheric density in kg/m^3
Pmi=10;....................//Mean effective pressure in bar
etamech=0.8;...............//Mechanical efficiency
//Calculations 
IP=(n*Pmi*l*(%pi/4)*d*d*N*k*10)/6;.................//Indicated power in kW
Ac=n*(%pi/4)*d*d*l*(N/2)*(etaV/60);.....................//Air consumption in m^3/s
ma=Ac*rhoa;........................................//Mass flow of air in kg/s
mf=ma/afr;.........................................//Mass flow of fuel in kg/s
etath=(IP*1000)/(mf*C);...................................//Indicated thermal efficiency
disp(etath*100,"Indicated thermal efficiency (%):")
BP=IP*etamech;.....................................//Brake Power in kW
disp(BP,"Brake power (in kW):")
