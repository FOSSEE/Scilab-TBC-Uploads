clc;funcprot(0);//EXAMPLE 21.3
// Initialisation of Variables
p1=1;.........//Pressure of air while entering the turbine in bar
t1=300;........//Temperature of air entering the turbine in K
p2=6.2;.........//Pressure of air after compression in bar
etac=0.88;....//Efficiency of compressor
etat=0.9;.....//Efficiency of turbine
far=0.017;........//Fuel air ratio
ga=1.4;........//Ratio of specific heats for compression
gae=1.333;........//Ratio of specific heats for expansion
cp=1.147;.............//Specific heat at constant pressure in kJ/kgK during expansion
cpc=1.005;.............//Specific heat at constant pressure in kJ/kgK during compression
C=44186;.............//Calorific value of fuel in kJ/kg
//Calculations
t2=t1*((p2/p1)^((ga-1)/ga));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;..............//Actual temperature of air after compression in K
t3=(((C*far)/((far+1)*cpc))+t21);..............//Temperature before expansion in turbine in K
p4=p1;p3=p2;t4=t3*((p4/p3)^((gae-1)/gae));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
wt=(cp*(t3-t41));........//Work done by turbine  in kJ/kg of air
wc=round(1*cpc*(t21-t1));.................//Work done by compression in kJ/kg of air
wnet=wt-wc;..........//Net work done in kJ/kg
qs=(far)*C;................//Heat supplied in kJ/kg of air
etath=wnet/qs;................//Thermal efficiency
disp(etath*100,"Thermal efficiency in %:")
