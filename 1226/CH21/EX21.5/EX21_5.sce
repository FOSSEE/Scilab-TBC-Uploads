clc;funcprot(0);//EXAMPLE 21.5
// Initialisation of Variables
t1=300;........//Temperature of air entering the turbine in K
t3=883;..............//Temperature before expansion in turbine in K
etac=0.8;....//Efficiency of compressor
etat=0.852;.....//Efficiency of turbine
rp=4;...........//Pressure ratio
p1=1;...............//Pressure of air before entering compressor
ga=1.4;........//Ratio of specific heats
cp=1.11;.............//Specific heat at constant pressure in kJ/kgK 
C=42000;.............//Calorific value of fuel in kJ/kg
perlcc=10;............//Percent loss of calorific value of fuel in combustion chamber
//Calculations
p2=p1*rp;.................//Pressure of air after compression in  bar
etacc=(100-perlcc)/100;.......//Efficiency of combustion chamber
t2=t1*((rp)^((ga-1)/ga));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;..............//Actual temperature of air after compression in K
qs=cp*(t3-t21);...................//Heat supplied in kJ/kg
t4=t3/((rp)^((ga-1)/ga));............//Ideal temperature after expansion in turbine in K
t41=t3-(etat*(t3-t4));.................//Actual temperature after expansion in turbine in K
wt=cp*(t3-t41);........//Work done by turbine  in kJ/kg of air
wc=(1*cp*(t21-t1));.................//Work done by compression in kJ/kg of air
wnet=wt-wc;..........//Net work done in kJ/kg
etath=wnet/qs;................//Thermal efficiency
disp(etath*100,"Thermal efficiency in %:")
wrr=wnet/wt;...................//Work ratio
disp(wrr,"The work ratio is:")
