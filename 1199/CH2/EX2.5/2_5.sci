// 2.5
clc;
d=60*10^-3;
Q=80*10^-3;
A=(%pi/4)*d^2;
v=Q/A;
vi=10^-3;
de=10^3;
Re=v*de*d/vi;
printf("Reynoids number = %.2f mm",Re)
d2=60*10^-3;
d1=100*10^-3;
A2=(%pi/4)*d2^2;
M=1/[(1-(d2/d1)^2)^0.5];
Cd=0.99;
w=1*10^3;
Qact=80*10^-3;
Pd=[[Qact/(Cd*M*A2)]^2]*w/(2)*10^-3;
printf("\nDifferential pressure = %.0f kN/m2 ",Pd)
Po=0.28;
D=10*10^-3;
E=206*10^9;
t=0.2*10^-3;
dm=[3*(1-Po^2)*D^4*Pd]/(256*E*t^3);
def=dm*10^6;
printf("\nDeflection at the center of diaphragm = %.2f micro m",def)