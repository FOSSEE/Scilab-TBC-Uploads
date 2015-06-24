clc;funcprot(0);//EXAMPLE 3.18
// Initialisation of Variables
L=0.25;...............//Engine stroke in m
D=0.15;..................//Engine bore in m
v2=0.0004;...............//Clearance volume in m^3
pers=5;...............//Percentage of stroke when fuel injection occurs
ga=1.4;..............//Ratio of specific heats
//Calculations
Vs=(%pi/4)*D*D*L;..............//Swept volume in m^3
Vt=Vs+v2;....................//Total cylinder volume in m^3
v3=v2+((pers/100)*Vs);..............//Volume at point of cut off
rho=v3/v2;............//Cut off ratio
r=1+(Vs/v2);.............//Compression ratio
etad=1-((((rho^ga)-1)/(rho-1))*(1/(ga*(r^(ga-1)))));..................//Efficiency of diesel engine
disp(etad*100,"Efficiency of diesel engine in %:")
