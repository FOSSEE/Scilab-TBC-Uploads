clc;funcprot(0);//EXAMPLE 3.9
// Initialisation of Variables
p1=1;.....................//Pressure in bar
t1=300;......................//Temperature in K
Q=1500;.....................//Heat added in kJ/kg
r=8;.......................//Compression ratio
Cv=0.72;....................//Specific heat at constant volume
ga=1.4;......................//Ratio of specific heats
//Calculations
t2=t1*(r)^(ga-1);..........//Temperature after adiabatic compression in K
p2=p1*(r^ga);..............//Pressure after adiabatic compression in bar
t3=(Q/Cv)+t2;.................//Temperature after isochoric compression in K
p3=(p2*t3)/t2;................//Pressure after isochoric compression in bar
t4=t3/(r^(ga-1));.......................//Temperature after adiabatic expansion in K
p4=p3*(1/(r^(ga)));................//Pressure after adiabatic expansion in bar
Ws=Cv*(t3-t2-t4+t1);.........//Specific work in kJ/kg
etath=1-(1/(r^(ga-1)));............//Thermal efficiency
disp(t2,"Temperature after adiabatic compression in K:")
disp(p2,"Pressure after adiabatic compression in bar:")
disp(t3,"Temperature after isochoric compression in K:")
disp(p3,"Pressure after isochoric compression in bar:")
disp(t4,"Temperature after adiabatic expansion in K:")
disp(p4,"Pressure after adiabatic expansion in bar:")
disp(Ws,"Specific work in kJ/kg :")
disp(etath*100,"Thermal efficiency in %:")
