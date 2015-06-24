clc;funcprot(0);//EXAMPLE 16.1
// Initialisation of Variables
pwu=735;............//Power developed by naturally aspirated engine in kW
afru=12.8;.............//Air fuel ratio for naturally aspirated engine
bsfc=0.350;......//Brake specific fuel consumption in kg/kWh
metau=0.86;...........//Mechanical efficiency of naturally aspirated engine
pi=730;...........//Inlet pressure in mm of Hg absolute
tm=325;...........//Mixture temperature in Kelvin
pr=1.6;.............//Pressure ratio of supercharged engine
etaa=0.7;.............//Adiabatic efficiency of supercharged engine
metas=0.9;..............//Mechanical efficiency of supercharged engine
afrs=12.8;.............//Air fuel ratio for supercharged engine
rhohg=13600;.............//Density of mercury in kg/m^3
R=0.287;...................//Gas constant in kJ/kgK
ga=1.4;................//Degree of freedom for gas
cp=1.005;..................//Specific heat of the fuel
g=9.81;................//Acceleration due to gravity in m/s^2
//calculations
t2=tm*(pr)^((ga-1)/ga);..............//Ideal temperature for the supercharged engine
t2a=tm+(t2-tm)/etaa;................//Actual temperature for the supercharged engine
wa=cp*(t2a-tm);.....................//Work of the supercharger
wsup=cp*(t2a-tm)/metas;..............//Work required to drive the supercharger in kJ/kg of air
//When unsupercharged
p1=(pi/1000)*((g*rhohg)/1000);..............//Inlet pressure in kN/m^2
rhounsup=p1/(R*tm);
maunsup=(bsfc*pwu*afrs)/3600;...................//Air consumption in kg/s for unsupercharged engine
//When supercharged
rhosup=(pr*p1)/(R*t2a);
masup=maunsup*(rhosup/rhounsup);..................//Air consumption in kg/s
Psup=masup*wsup;...............//Power required to run the supercharger in kW
disp(Psup,"The Power required to run the supercharger (kW):")
