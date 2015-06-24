clc;funcprot(0);//EXAMPLE 21.16
// Initialisation of Variables
//Conditions of the closed gas turbine
t1=293;.............//Temperature at the inlet of first stage compressor in K
t5=1023;.................//Maximum temperature in K
p1=1.5;................//Inlet pressure in bar
p2=6;.................//Pressure in bar
etac=0.82;..............//Compressor efficiency
etat=0.82;..............//Turbine efficiency
etare=0.70;................//Regenerator efficiency
P=350;....................//Power developed by the plant in kW
ga=1.4;................//Ratio of specific heats
cp=1.005;..............//Specific heat at constant pressure in kJ/kgK
t3=t1;
//Calculations
t2=t1*((sqrt(p2/p1))^((ga-1)/ga));
t21=((t2-t1)/etac)+t1;t41=t21;
t6=t5/((p2/sqrt(p1*p2))^((ga-1)/ga));
t61=t5-(etat*(t5-t6));t81=t61;
t7=t5;
ta=(etare*(t81-t41))+t41;.......//Temperature of air coming out of regenerator in K
wnet=2*cp*(t5-t61-t21+t1);........//Net work done in kJ/kg of air
qs=cp*(t5-t41+t7-t61);...........//Heat supplied without regenerator in kJ/kg of air
qsr=cp*(t5-ta+t7-t61);............//Heat supplied with regenerator in kJ/kg of air
etath=wnet/qs;.............//Thermal efficiency (without regenerator)
etathr=wnet/qsr;.........//Thermal efficiency (with regenerator)
mfl=P/wnet;..........//mass of fluid circulated in kg/s
disp(etath*100,"Thermal efficiency of the turbine without regenerator (in %):")
disp(etathr*100,"Thermal efficiency of the turbine with regenerator (in %):")
disp(mfl,"Mass of fluid circulated in kg/s:")
