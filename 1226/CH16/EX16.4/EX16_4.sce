clc;funcprot(0);//EXAMPLE 16.4
// Initialisation of Variables
p1=1.0132;..............//Mean pressure at sea level in bar
t1=283;................//Mean temperature at sea level in Kelvin
BP=250;....................//Brake Power output in kW
etaV=0.78;..................//Volumetric efficiency at sea level free air condition
sfc=0.245;............//Specific Fuel consumption in kg/kW.h
afr=17;...................//Air fuel ratio
N=1500;...................//Engine rpm
at=2700;.................//Altitude in mts
p2=0.72;................//Pressure in bar at the given altitude
Psup=0.08;.................//8% power of engine is taken by the supercharger
R=287;...................//Gas constant in J/kgK
t2=32+273;..............//Temperature in Kelvin at the given altitude
//calculations
mf=(sfc*BP)/60;.............//Fuel consumption in kg/min
ma = mf*afr;..................//Air consumption in ig/min
acps = ma/(N/2);............//Air consumption per stroke in kg
Vs=(acps*R*t1)/(etaV*p1*10^5);................//Engine capacity in m^3
disp(Vs,"The Engin Capacity in m^3:")
pmb=(BP*6)/(Vs*10*(N/2));........//Brake Mean Effective Pressure in bar
disp(pmb,"The Brake mean effective pressure is (bar) :")
gp=BP/(1-Psup);.................//Gross power produced by supercharged engine in kW
masup=ma*gp/BP;......................//Mass of air required for supercharged engine in kg
matc=masup/(N/2);..............//Mass of air taken per cycle
pressure=(matc*R*t2)/(etaV*10^5*Vs);
disp(pressure-p2,"The Increase of pressure required (in bar):")
