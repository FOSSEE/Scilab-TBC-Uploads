clear;
clc;

V=10000;
P=12.5e6;
f=50;
Xl=4;


d=asin(P*Xl/(V*V));

VL=2*V*sin(d/2);
QL=VL^2/4;
Qc=QL/2;

C=Qc/(2*%pi*f*V*V);

mprintf("C=%.1f e-6F",C*1e6);
