clc;funcprot(0);//EXAMPLE 21.14
// Initialisation of Variables
etahe=0.72;.................//Efficiency of heat exchanger
p1=1.01;.........//Pressure of air while entering the turbine in bar
t1=293;........//Temperature of air entering the turbine in K
p2=4.04;.........//Pressure of air after compression in bar
etat=0.85;..........//Turbine efficiency
pdhe=0.05;............//Pressure drop on each side of heat exchanger in bar
pdcc=0.14;...........//Pressure drop in combustion chamber in bar
etac=0.8;...........//Compressor efficiency
ga=1.4;.............//Ratio of specific heats
C=41800;.............//Calorific value of fuel in kJ/kg
cp=1.024;...........//Specific heat at constant pressure in kJ/kgK
afrc=90;..............//Air fuel ratio for simple cycle
//Calculations
t2=(t1*((p2/p1)^((ga-1)/ga)));...............//Ideal temperature of air after compression in K
t21=round(((t2-t1)/etac)+t1);...............//Actual temperature of air after compression in K
t3=((1*C)/(cp*(afrc+1)))+t21;............//Temperature before expansion in turbine in K
p4=p1;p3=p2-pdcc;t4=round(t3*((p4/p3)^((ga-1)/ga)));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
etath=(t3-t41-t21+t1)/(t3-t21);...........//Thermal efficiency in simple cycle
disp(etath*100,"Thermal efficiency in simple cycle in %:")
p3he=p2-pdhe-pdcc;..........//Pressure before expansion in turbine in bar in heat exchanger cycle
p4he=p1+pdhe;................//Pressure after expansion in turbine in bar in heat exchanger cycle
t4he=t3*((p4he/p3he)^((ga-1)/ga));............//Ideal temperature after expansion in turbine in K in heat exchanger cycle
t41he=round(t3-(etat*(t3-t4he)));.................//Actual temperature after expansion in turbine in K in heat exchanger cycle
t5=(etahe*(t41he-t21))+t21;
etathhe=(t3-t41he-t21+t1)/(t3-t5);.............//Thermal efficiency for heat exchanger cycle
disp(etathhe*100,"Thermal efficiency in heat exchanger cycle in %:")
inc=etathhe-etath;
disp(inc*100,"Increase in thermal efficiency in %:")




