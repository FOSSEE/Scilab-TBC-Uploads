clc;funcprot(0);//EXAMPLE 17.28
// Initialisation of Variables
D=0.2;.................//Engine bore in m
L=0.25;...............//Engine stroke in m
n=2;......................//No of cylinders
r=13;......................//Compression ratio
fc=14;..................//Fuel consumption in kg/h
N=300;....................//Engine rpm
etarel=0.65;..............//Relative efficiency
etamech=0.76;.............//Mechanical efficiency
co=0.05;.....................//Cut off of the stroke
C=41800;.....................//Calorific value of fuel in kJ/kg
k=1;........................//Two stroke engine
ga=1.4;.......................//Degree of freedom
//calculations
rho=1+(co*(r-1));
etast=1-((1/(r^(ga-1)))*(1/ga)*((rho^ga)-1)*(1/(rho-1)));............//Air standard efficiency
etath=etarel*etast;........................//Thermal efficiency
IP=etath*(fc/3600)*C;........................//Indicated power in kW
BP=etamech*IP;................................//Brake power in kW
pmi=(6*IP)/(n*N*L*(%pi/4)*D*D*k*10);............//mean effective pressure in bar
disp(pmi,"Mean effective pressure (in bar):")
pmb=pmi*etamech;...........................//Brake mean effective pressure in bar
disp(pmb,"Brake mean effective pressure (in bar):")
