clc;funcprot(0);//EXAMPLE 21.2
// Initialisation of Variables
t1=288;........//Temperature of air entering the turbine in K
t3=883;..............//Temperature before expansion in turbine in K
etac=0.8;....//Efficiency of compressor
etat=0.82;.....//Efficiency of turbine
rp=6;...........//Pressure ratio
ma=16;...........//Mass of air in kg/s
gac=1.4;........//Ratio of specific heats for compression process
gae=1.333;............//Ratio of specific heats for expansion process
cpc=1.005;.............//Specific heat at constant pressure in kJ/kgK during compression process
cpe=1.11;.............//Specific heat at constant pressure in kJ/kgK during expansion process
C=41800;.............//Calorific value of fuel in kJ/kg
//Calculations
t2=t1*((rp)^((gac-1)/gac));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;..............//Actual temperature of air after compression in K
t4=t3/((rp)^((gae-1)/gae));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
wt=cpe*(t3-t41);........//Work done by turbine  in kJ/kg of air
wc=(1*cpc*(t21-t1));.................//Work done by compression in kJ/kg of air
wnet=wt-wc;..........//Net work done in kJ/kg
P=wnet*ma;.................//Power developed in kW/kg of air
disp(P,"Power developed in kW/kg of air:")
