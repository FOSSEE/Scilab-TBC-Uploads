clc;funcprot(0);//EXAMPLE 11.10
// Initialisation of Variables
d=0.11;..................//Engine bore in m
l=0.11;..................//Engine length in m
da=0.042;................//Throat diameter of the choke tube in m
N=3000;..................//Engine rpm
etaV=0.75;...............//Volumetric efficiency
Ra=287;..................//Gas constant for air in J/kgK
Rv=97;...................//Gas constant for fuel vapour in J/kgK
t=273;....................//Temperature in Kelvin
p=1.013;...................//Pressure in bar
delpa=0.12;.................//Pressure depression in bar
t2=273+15;...................//Temperature at throat
n=8;........................//No of cylinders
mO=32;.......................//Mass of Oxygen molecule in amu
mC=12;........................//Mass of Carbon molecule in amu
mH=1;.......................//Mass of Hydrogen molecule in amu
cC=84;......................//Composition of carbon in %
cH2=16;.....................//Composition of Hydrogen in % 
//Calculations
Vfm=(%pi/4)*d*d*l*n*(N/2)*etaV;.....................//Volume of fuel mixture supplied in m^3/min
afr=((cC*(mO/mC))+(cH2*(mO/(4*mH))))/23;..................//Air fuel ratio
va=(Ra*t)/(p*10^5);.....................//Volume of 1 kg of air in m^3/kg
vf=(Rv*t)/(p*10^5);......................//Volume of 1 kg of fuel vapour in m^3/kg
fc=(Vfm/((afr*va)+vf))*60;...............//Fuel consumption in kg/h
disp(fc,"Fuel consumption (in kg/h):")
rhoa=((p-delpa)*10^5)/(Ra*t2);...............//Density of air at the throat in kg/m^3
Ca=(afr*(fc/3600))/((%pi/4)*da*da*rhoa);................//Velocity of air at the throat in m/s
disp(Ca,"Velocity of air at the throat (in m/s):")
