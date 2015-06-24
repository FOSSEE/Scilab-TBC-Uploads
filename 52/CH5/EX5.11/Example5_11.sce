//Example 5.11
//To Design the Filter using Impulse Invarient Method
clear;
clc ;
close ;
s=%s;
T=1;
HS=(2)/(s^2+3*s+2);
elts=pfss(HS);
disp(elts,'Factorized HS = ');
//The poles comes out to be at -2 and -1
p1=-2;
p2=-1;
z=%z;
HZ=(2/(1-%e^(p2*T)*z^(-1)))-(2/(1-%e^(p1*T)*z^(-1)))
disp(HZ,'HZ = ');