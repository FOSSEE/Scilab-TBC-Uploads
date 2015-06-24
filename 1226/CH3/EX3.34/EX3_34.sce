clc;funcprot(0);//EXAMPLE 3.34
// Initialisation of Variables
ma=0.1;...................//Air supplied in kg/s
p1=1;.....................//Supply pressure in bar
t4=285;.................//Temperature of air when supplied to cabin in K
p2=4;...................//Pressure at inlet to turbine in bar
cp=1.0;..................//Specific heat at constant pressure in kJ/kgK
ga=1.4;..................//Ratio of specific heats
//Calculations
t3=t4*((p2/p1)^((ga-1)/ga));................//Temperature at turbine inlet in K
disp(t3,"Temperature at turbine inlet in K:")
P=ma*cp*(t3-t4);...........................//Power developed in kW
disp(P,"Power developed in kW:")
