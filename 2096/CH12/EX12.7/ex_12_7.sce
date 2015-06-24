//Example 12.7 // flow rate
clc;
clear;
close;
//given data :
Qv=1.2; // m^3/s
C0=0.6; // discharge coeficient of orifice
Cv=0.97; // discharge coeficient
Q0=(C0/Cv)*Qv;
disp(Q0,"the flow rate,Q0(m^3/s) = ")
