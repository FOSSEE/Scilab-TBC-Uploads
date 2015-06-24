clc;funcprot(0);//EXAMPLE 21.17
// Initialisation of Variables
t1=293;............//Temperature of inlet air into low pressure compressor in K
p1=1.05;.........//Pressure of inlet air into low pressure compressor in bar
t3=300;...........//Temperature of air after passing it through intercooler in K
t6=1023;..........//temperature of air in combustion chamber in K
rp=2;...........//Pressure ratio of each compressor 
etac=0.82;........//Compressor efficiency
etat=0.82;..........//Turbine efficiency
etaht=0.72;............//Heat exchanger efficiency
ma=16;...........//Air flow in kg/s
ga=1.4;...........//Ratio of specific heats for air
gag=1.33;..........//Ratio of specific heats for gases
cpa=1.0;...........//Specific heat at constant pressure in kJ/kgK for air
cpg=1.15;.........//Specific heat at constant pressure in kJ/kgK for gases
C=42000;.........//Calorific value of fuel in kJ/kg
//Calculations
t2=round(t1*(rp^((ga-1)/ga)));
t21=round(((t2-t1)/etac)+t1);
t4=t3*(rp^((ga-1)/ga));
t41=round(((t4-t3)/etac)+t3);
t71=round(((cpg*t6)-cpa*(t21-t1+t41-t3))/cpg);
t7=t6-((t6-t71)/etat);
p6=p1*rp*rp;
p7=p6/((t6/t7)^((gag)/(gag-1)));
t8=round(t71/((p7/p1)^((gag-1)/gag)));
t81=round(t71-(etat*(t71-t8)));
P=cpg*(t71-t81);...........//Net power output in kJ/kg
disp(P*ma,"Net power output in kW: ")
t5=etaht*(t81-t41)+t41;
qs=ma*cpg*(t6-t5);......//Heat supplied in combustion chamber in kJ/s
etath=P*ma/qs;.........//Thermal efficiency
disp(etath*100,"Thermal efficiency is (in %):")
afr=C/(cpg*(t6-t5));......//Air fuel ratio
mf=ma*3600/afr;..............//Fuel supplied per hour in kg
sfc=mf/(P*ma);...........//Specific fuel consumption in kg/kWh
disp(sfc,"Specific fuel consumption in kg/kWh:")
