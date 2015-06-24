clc;funcprot(0);//EXAMPLE 3.12
// Initialisation of Variables
ga=1.4;..............//Ratio of specific heats
p2byp1=15;...............//Ratio pressure at the end of compression to that of pressure at the start
t1=311;................//Initial temperature in K
t3=2223;...............//Maximum temperature in K
R=0.287;...............//Gas constant in kJ/kg K
//Calculations
r=p2byp1^(1/ga);...............//Compression ratio
etath=1-(1/(r^(ga-1)));.............//Thermal efficiency
t2=t1*(r^(ga-1));............//Temperature at the end of compression in K
t4=t3/(r^(ga-1));...........//Temperature at the end of isothermal expansion in K
cv=R/(ga-1);................//Specific heat at constant volume in kJ/kg
Q=cv*(t3-t2);..............//Heat supplied in kJ/kg of air
Qr=cv*(t4-t1);.................//Heat rejected in kJ/kg of air
W=Q-Qr;.................//Work done
disp(r,"Compression ratio:")
disp(etath*100,"Thermal efficiency in %:")
disp(W,"Work done in kJ:")
