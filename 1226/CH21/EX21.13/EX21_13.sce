clc;funcprot(0);//EXAMPLE 21.13
// Initialisation of Variables
t1=288;.............//Temperature of intake air in K
rp=4;.............//Pressure ratio
etac=0.82;.........//Compressor efficiency
etahe=0.78;...........//Efficiency of heat exchanger
etat=0.7;...........//Turbine efficiency
t3=873;............//Temperature before expansion in turbine in K
R=0.287;............//Gas constant for air in kJ/kgK
ga=1.4;...........//Ratio of specific heats
//Calculations
t2=t1*((rp)^((ga-1)/ga));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;...............//Actual temperature of air after compression in K
t4=t3/(rp^((ga-1)/ga));............//Ideal temperature after expansion in turbine in K
t41=t3-etat*(t3-t4);............//Actual temperature after expansion in turbine in K
cp=R*(ga/(ga-1));..............//Specific heat at constant pressure in kJ/kgK
wc=cp*(t21-t1);.............//Compressor work in kJ/kg
wt=cp*(t3-t41);....................//Turbine work in kJ/kg
wnet=wt-wc;....................//Net work available in kJ/s
t5=(etahe*(t41-t21))+t21;
qs=cp*(t3-t5);.................//Heat supplied in kJ/kg
etac=wnet/qs;...............//Cycle efficiency
disp(etac*100,"Cycle efficiency in %:")
