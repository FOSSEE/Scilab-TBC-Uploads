clc;funcprot(0);//EXAMPLE 21.8
// Initialisation of Variables
p1=1;.........//Pressure of air while entering the turbine in bar
t1=300;........//Temperature of air entering the turbine in K
t21=490;........//Actual temperature of air after compression in K
t3=1000;............//Temperature before expansion in turbine in K
rp=5;.............//Pressure ratio
etac=0.8;....//Efficiency of compressor
etat=0.8;.....//Efficiency of turbine
ga=1.4;........//Ratio of specific heats
cp=1.005;.............//Specific heat at constant pressure in kJ/kgK 
//Calculations
t4=t3/((rp)^((ga-1)/ga));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
t5=((t41-t21)*etac)+t21;...........//Temperature of the exhaust from the unit in K
wc=cp*(t21-t1);.............//Work consumed by compressor in kJ/kg
wt=cp*(t3-t41);........//Work done by turbine in kJ/kg
qs=cp*(t3-t5);..........//Heat supplied in kJ/kg
etac=(wt-wc)/qs;.........//Cycle efficiency
disp(etac*100,"Cycle efficiency in %:")


