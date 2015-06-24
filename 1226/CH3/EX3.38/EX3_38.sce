clc;funcprot(0);//EXAMPLE 3.38
// Initialisation of Variables
t1=300;.................//Inlet temperature in K
p1=1;....................//Inlet pressure in bar
ma=1;....................//Mass of air in kg
rp=6.25;.............//Pressure ratio
t3=1073;...........//Maximum temperature in K
etac=0.8;............//Efficiency of compressor
etat=0.8;.............//Efficiency of turbine
ga=1.4;.................//Ratio of specific heats
cp=1.005;.............//Specific heat at constant pressure in kJ/kgK
//Calculations
t2=t1*(rp^((ga-1)/ga));...........//Ideal Temperature of air while leaviing the compressor in K
t21=((t2-t1)/etac)+t1;............//Actual Temperature of air while leaviing the compressor in K
Wcomp=ma*cp*(t21-t1);.............//Compressor work in kJ/kg
t4=t3/(rp^((ga-1)/ga));........//Ideal temperature of air while leaving the turbine in K
t41=t3-(etat*(t3-t4));..........//Actual temperature of air while leaving the turbine in K
Wtur=ma*cp*(t3-t41);..............//Turbine work in kJ/kg
Wnet=Wtur-Wcomp;.................//Net work produced in kJ/kg
Qs=ma*cp*(t3-t21);.................//Heat supplied in kJ/kg
disp(Wcomp,"Compressor work in kJ/kg:")
disp(Wtur,"Turbine work in kJ/kg:")
disp(Qs,"Heat supplied in kJ/kg:")
disp((Wnet/Qs)*100,"Cycle efficiency in %:")
disp(t41,"Actual exhaust temperature of turbine in K")
