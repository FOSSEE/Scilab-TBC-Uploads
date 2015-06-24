clc;funcprot(0);//EXAMPLE 3.35
// Initialisation of Variables
p1=1;......................//Pressure of air entering the compressor in bar
p2=3.5;.................//Pressure of air while leaving the compressor in bar
t1=293;..................//Temperature of air at the onlet of the compressor in K
t3=873;.................//Temperature of air at the turbine inlet in K
cp=1.005;...............//Specific heat at constant pressure in kJ/kgK
ga=1.4;...................//Ratio of specific heats
//Calculations
rp=p2/p1;....................//Pressure ratio of the cycle
eta=1-(1/(rp^((ga-1)/ga)));..............//Efficiency of the cycle
disp(eta*100,"Efficiency of the cycle:")
t2=t1*((rp^((ga-1)/ga)));................//Temperature of air while leaving the compressor in K
q1=cp*(t3-t2);................//Heat supplied to the air in kJ/kg
disp(q1,"Heat supplied to the air in kJ/kg:")
W=eta*q1;........................//Work available at the shaft in kJ/kg
disp(W,"Work available at the shaft in kJ/kg:")
q2=q1-W;................//Heat rejected in the cooler in kJ/kg
disp(q2,"Heat rejected in the cooler in kJ/kg:")
t4=t3/(rp^((ga-1)/ga));.......................//Temperature of air leaving the turbine in K
disp(t4,"Temperature of air leaving the turbine in K:")
