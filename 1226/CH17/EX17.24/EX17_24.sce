clc;funcprot(0);//EXAMPLE 17.24
// Initialisation of Variables
v1=0.216;.....................//Gas consumption in m^3/min
pw=75;........................//Pressure of gas in mm of water
t1=290;......................//Temperature of gas in K
ac=2.84;....................//Air consumption in kg/min
br=745;......................//Barometer reading in m of Hg
D=0.25;.....................//Engine bore in m
L=0.475;......................//Engine stroke in m
N=240;........................//Engine rpm
R=287;......................//Gas constant for air in J/kgK
//Calculations
p1=br+(pw/13.6);...................//Pressure of gas in mm of mercury
p2=760;t2=273;.....................//NTP conditions in mm of Hg and Kelvin
v2=(p1*v1*t2)/(t1*p2);...............//Volume of gas used at NTP in m^3
gs=v2/(N/2);.........................//Gas used per stroke in m^3
v=(ac*R*t2)/(1.0132*10^5);...........//Volume occupied by air at NTP in m^3/min
aps=v/(N/2);...........................//Air used per stroke
Va=gs+aps;.....................//Actual volume of mixture in m^3 drawn per stroke at NTP
Vs=(%pi/4)*D*D*L;...............//Swept volume in mm^3
etaV=(Va/Vs);...................//Volumetric efficiency
disp(etaV*100,"Volumetric efficiency (in %):")
