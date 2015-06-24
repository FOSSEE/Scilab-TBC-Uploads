clc;funcprot(0);//EXAMPLE 21.9
// Initialisation of Variables
p1=1;.........//Pressure of air while entering the turbine in bar
t1=288;........//Temperature of air entering the turbine in K
p2=8;.........//Pressure of air after compression in bar
t3=1173;.............//Temperature before expansion in turbine in K
etac=0.76;....//Efficiency of compressor
etat=0.86;.....//Efficiency of turbine
ma=23;.........//Quantity of air circulation in kg/s
ga=1.4;........//Ratio of specific heats for compression
gag=1.34;........//Ratio of specific heats for expansion
cp=1.005;.............//Specific heat at constant pressure in kJ/kgK 
cpg=1.128;.............//Specific heat at constant pressure in kJ/kgK
C=4200;.............//Calorific value of fuel in kJ/kg
etamech=0.95;........//Mechanical efficiency
etagen=0.96;.........//Generator efficiency
//Calculations
t2=t1*((p2/p1)^((ga-1)/ga));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;..............//Actual temperature of air after compression in K
p4=p1;p3=p2;.............//Isobaric processes
t4=t3*((p4/p3)^((gag-1)/gag));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
wc=cp*(t21-t1);................//Work dony by compressor
m1=(wc)/(cpg*(t3-t41));.............//Flow through compressor turbine in kg
m2=1-m1;..............//Flow through power turbine in kg
wpt=m2*(cpg*(t3-t41));.........//turbine work in kJ/kg
P=ma*wpt*etamech*etagen;.........//Power output in kW
qi=cpg*t3-cp*t21;.............//Input heat in kJ/kg of air
etath=wpt/qi;.............//Thermal efficiency of power turbine
disp(etath*100,"Thermal efficiency of power turbine in %:")
