//Example 5.15
//To Design the Filter using Impulse Invarient Method
clear;
clc ;
close ;
s=%s;
T=0.2;
HS=10/(s^2+7*s+10);
elts=pfss(HS);
disp(elts,'Factorized HS = ');
//The poles comes out to be at -5 and -2
p1=-5;
p2=-2;
z=%z;
HZ=T*((-3.33/(1-%e^(p1*T)*z^(-1)))+(3.33/(1-%e^(p2*T)*z^(-1))))
disp(HZ,'HZ = ');