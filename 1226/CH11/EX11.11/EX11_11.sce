clc;funcprot(0);//EXAMPLE 11.11
// Initialisation of Variables
a=4500;.................//Altitude
afr=14;...............//Air fuel ratio at sea level
t1=25;...........//Temperature at sea level in Celsius
p1=1.013;...........//Pressure at sea level in bar
//Calculations
t2=t1-(0.0064*a);.........................//Temperature at the given altitude using the given formula in Celsius
p2=p1/(10^(a/19300));....................//Pressure at the given altitude using the given formula in bar
afr2=afr*sqrt((p2*(t1+273))/(p1*(t2+273)));...................//Air fuel ratio at the altitude
disp(afr2,"Air fuel ratio at the altitude:")
