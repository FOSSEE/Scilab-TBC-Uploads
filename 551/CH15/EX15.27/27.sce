clc
d=0.022; //m
di=0.18; //m
e1=0.62;
e2=0.82;
rho=7845; //kg/m^3
T1a=693; //K; For caseI
T1b=813; //K; For caseII
T2=1373; //K
l=1; //m
a=5.67*10^(-8); 
cp=0.67; //kJ/kg K

A1=%pi*d*l;
A2=%pi*di*l;


Qi=A1*a*(T1a^4-T2^4)/(1/e1+A1/A2*(1/e2 - 1));

Qe=A1*a*(T1b^4-T2^4)/(1/e1+A1/A2*(1/e2 - 1));

Qav=-(Qi+Qe)/2;

t_h=%pi/4*d^2*rho*cp*(T1b-T1a)*10^3/Qav;
disp("Time required for the heating operation")
disp(t_h)
disp("s")