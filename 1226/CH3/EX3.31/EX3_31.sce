clc;funcprot(0);//EXAMPLE 3.31
// Initialisation of Variables
cp=0.92;..................//Specific heat at constant pressure in kJ/kgK
cv=0.75;..................//Specific heat at constant volume in kJ/kgK
p1=1;...................//Pressure at the end of adiabatic expansion in bar
p2=p1;...................//Pressure at the end of isobaric compression in bar
p3=4;....................//Pressure at the end of isobaric compression in bar
p4=16;...................//Final pressure after heat addition in bar
t2=300;.....................//Temperature at the end of isobaric compression in K
ga=1.22;................//Ratio of specific heats
//Calculations
t3=t2*((p3/p2)^((ga-1)/ga));............//Temperature at the end of isobaric compression in K
t4=(p4*t3)/p3;........................//Final temperature after heat addition in K
t1=t4/((p4/p1)^((ga-1)/ga));...................//Temperature at the end of adiabatic compression in K
Qs=cv*(t4-t3);.........................//Heat supplied in kJ/kg
Qr=cp*(t1-t2);.........................//Heat rejected in kJ/kg
W=Qs-Qr;.......................//Work done per kg of gas in kJ
disp(W,"Work done in kJ/kg:")
eta=W/Qs;......................//Efficiency of cycle
disp(eta*100,"Efficiency of cycle in %:")
