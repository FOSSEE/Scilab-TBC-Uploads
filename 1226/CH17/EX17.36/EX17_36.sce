clc;funcprot(0);//EXAMPLE 17.36
// Initialisation of Variables
n=6;....................//No of cylinders
D=0.125;................//Engine bore in m
L=0.125;...............//Engine stroke in m
N=2400;.................//Engine rpm
W=490;...............//Load on the dynamometer in N
CD=16100;...............//Dynamometer constant
d0=0.055;...................//Air orifice diameter in m
Cd=0.66;...................//Co efficient of discharge
hw=310;.................//Head causing flow through prifice in mm of water
br=760;................//Barometer reading in mm of Hg
t=298;..................//Ambient temperature in Kelvin
fc=22.1;..................//Fuel consumption per hour in kg
C=45100;..................//Calorific value of fuel used in kJ/kg
perc=85;...................//Percentage of carbon in the fuel
perh=15;...................//Percentage of hydrogen in the fuel
p1=1.013;....................//Pressure of air at the end of suction stroke in bar
t1=298;......................//Temperature of air the the end of suction stroke in Kelvin
k=0.5;.......................//Four stroke engine
R=287;.......................//Gas constant in J/kgK
//calculations
BP=W*(N/CD);................//Brake power in kW
pmb=(BP*6)/(L*D*D*k*10*N*n*(%pi/4));................//Brake mean effective pressure in bar
disp(pmb,"Brake mean effective pressure (in bar):")
bsfc=fc/BP;.......................//Brake specific fuel consumption in kg/kWh
disp(bsfc,"Brake specific fuel consumption (in kg/kWh):")
etathb=BP/((fc/3600)*C);......................//Brake thermal efficiency
disp(etathb*100,"Brake thermal efficiency (in %):")
Vst=(%pi/4)*D*D*L;..............//Stroke volume in m^3
Val=840*(%pi/4)*d0*d0*Cd*sqrt((hw/10)/((p1*10^5)/(R*t1)));............//Volume of air passing through orifice of air box per min
Vac=Val/n;.........................//Actual volume of air per cylinder in m^3/min
asps=Vac/(N/2);.......................//Air supplied per stroke per cylinder in m^3
etav=asps/Vst;....................//Volumetric efficiency
disp(etav*100,"Volumetric efficiency (in %)")
Qa=(100/23)*(((perc/100)*(8/3))+((perh/100)*(8/1)));.....................//Quantity of air required per kg of fuel combustion
aqas=(Val*((p1*10^5)/(R*t1))*60)/fc;....................//Actual quantity of air supplied per kg of fuel
pe=(aqas-Qa)/Qa;....................//Fraction of excess air supplied to engine
disp(pe*100,"Percentage of excess air supplied :")

