clc;funcprot(0);//EXAMPLE 21.6
// Initialisation of Variables
p1=1;.........//Pressure of air while entering the turbine in bar
t1=293;........//Temperature of air entering the turbine in K
p2=5;.........//Pressure of air after compression in bar
plcc=0.1;.....//Pressure loss in combustion chamber in bar
t3=953;............//Temperature before expansion in turbine in K
etac=0.85;....//Efficiency of compressor
etat=0.8;.....//Efficiency of turbine
etacc=0.85;......//Efficiency of combustion chamber
ga=1.4;........//Ratio of specific heats
cp=1.024;.............//Specific heat at constant pressure in kJ/kgK 
P=1065;.............//Power developed by the plant in kW

//Calculations
p3=p2-plcc;........................//Pressure before expansion in turbine in bar
p4=p1;
t2=t1*((p2/p1)^((ga-1)/ga));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;..............//Actual temperature of air after compression in K
t4=t3*((p4/p3)^((ga-1)/ga));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
wt=(cp*(t3-t41));........//Work done by turbine  in kJ/kg of air
wc=round(1*cp*(t21-t1));.................//Work done by compression in kJ/kg of air
wnet=wt-wc;..........//Net work done in kJ/kg
ma=P/wnet;.............//Quantity of air in circulation in kg
disp(ma,"Quantity of air in circulation in kg")
qs=cp*(t3-t21)/etac;..................//Actual heat supplied per kg of air circulation in kJ
disp(qs,"Actual heat supplied per kg of air circulation in kJ:")
etath=wnet/qs;.............//Thermal efficiency
disp(etath*100,"Thermal efficiency in %:")


