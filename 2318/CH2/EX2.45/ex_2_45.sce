//Example 2.45: Resistance and % error
clc;
clear;
close;
//given data :
i1=.50;// in mA
r1=5000;// in ohm
r2=50;// in ohm
V=3;// in V
I=i1*10^-3/2;// mid scale deflection current in A
Rs=(V/I)-(r1+r2);
disp(Rs,"(i). The resistance,Rs(ohm) = ")
A=.5/100;
In=30/100;
Me=A*1000;
Fsr=In*1000;
P_error=Me*100/Fsr;
disp(P_error,"Percentage inaccuracy,(%) = ")
