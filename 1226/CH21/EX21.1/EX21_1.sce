clc;funcprot(0);//EXAMPLE 21.1
// Initialisation of Variables
p1=1;.........//Pressure of air while entering the turbine in bar
t1=293;........//Temperature of air entering the turbine in K
p2=4;.........//Pressure of air after compression in bar
etac=0.8;....//Efficiency of compressor
etat=0.85;.....//Efficiency of turbine
afr=90;........//Air fuel ratio
ma=3;...........//Mass of air in kg/s
ga=1.4;........//Ratio of specific heats
cp=1;.............//Specific heat at constant pressure in kJ/kgK
C=41800;.............//Calorific value of fuel in kJ/kg
//Calculations
t2=t1*((p2/p1)^((ga-1)/ga));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;..............//Actual temperature of air after compression in K
t3=round((C/((afr+1)*cp))+t21);..............//Temperature before expansion in turbine in K
p4=p1;p3=p2;t4=t3*((p4/p3)^((ga-1)/ga));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
wt=((afr+1)/afr)*cp*(t3-t41);........//Work done by turbine  in kJ/kg of air
wc=round(1*cp*(t21-t1));.................//Work done by compression in kJ/kg of air
wnet=wt-wc;..........//Net work done in kJ/kg
P=wnet*ma;.................//Power developed in kW/kg of air
disp(P,"Power developed in kW/kg of air:")
qs=(1/afr)*C;................//Heat supplied in kJ/kg of air
etath=wnet/qs;................//Thermal efficiency
disp(etath*100,"Thermal efficiency in %:")
