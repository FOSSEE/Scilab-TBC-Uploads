//Calculating the Gauge factor
clc;
b=0.02;
d=0.003;
I=(b*d^3)/12;
E=200*10^9;
x=12.7*10^-3;
l=0.25;
F=3*E*I*x/l^3;
x=0.15;
M=F*x;
t=0.003;
s=(M*t)/(I*2);
strain=s/E;
dR=0.152;
R=120;
Gf=(dR/R)/strain;
disp(Gf,'Gauge factor=')