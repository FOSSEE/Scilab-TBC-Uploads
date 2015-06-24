clc;funcprot(0);...//Example 20.16
//Initialisation of variables
p1=1.03;...........//Intake pressure in bar
t1=300;............//Intake temperature in K
p2=7;.............//Intake pressure for High pressure cylinder in bar
t2=310;..............//Temperature of air entering high pressure cylinder in K
p3=40;............//Pressure of air after compression in bar
V=30;.........//volume of air delivered in m^3/h
R=0.287;............//Gas constant for air in kJ/kgK
ga=1.4;...........//Ratio of specific heats
//Calculations
m=p1*10^5*V/(R*1000*t1);..........//Mass of air compressed in kg/h
t21=t1*((p2/p1)^((ga-1)/ga));.......//Actual temperature of air entering high pressure cylinder in K
t3=t2*((p3/p2)^((ga-1)/ga));........//Actual temperature of air after compression in K
W=((ga)/(ga-1))*m*(R/3600)*(t21-t1+t3-t2);..........//Power required to run compressor in kW
disp(W,"Power required to run the compressor in kW:")
