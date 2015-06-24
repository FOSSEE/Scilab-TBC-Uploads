clc;funcprot(0);//EXAMPLE 21.11
// Initialisation of Variables
rp=5.6;................//Pressure ratio
t1=303;.............//Temperature of intake air in K
p1=1;............//Pressure of intake air in bar
t5=973;............//Highest temperature of the cycle in K
etac=0.85;..........//Effeciency of compressor
etat=0.9;..........//Efficiency of turbine
ma=1.2;..........//Rate of air flow in kg/s
cp=1.02;...........//Specific heat at constant volume in kJ/kgK
ga=1.41;.............//Ratio of specific heats
//Calculations
t2=t1*((sqrt(rp))^((ga-1)/ga));
t21=((t2-t1)/etac)+t1;
wc=2*ma*cp*(t21-t1);............//Work input for the two stage compressor in kJ/s
t6=t5/(rp^((ga-1)/ga));
t61=t5-etat*(t5-t6);
wt=ma*cp*(t5-t61);...............//Work output from turbine in kJ/s
wnet=wt-wc;....................//Net work available in kJ/s
disp(wnet,"Net work output in kW:")
qs=ma*cp*(t5-t21);.................//Heat supplied in kJ/s
etath=wnet/qs;
disp(etath*100,"Power plant efficiency in %:")
