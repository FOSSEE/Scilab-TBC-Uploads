clear;
clc;
format('v',6);
R=0,G=0,a=0,Ro=70,B=3,f=100*10^6;
w=2*%pi*f;
C=B/(w*Ro);
disp(C*10^12,'Capacitance per meter of line in pF')
L=Ro*Ro*C;
disp(L*10^9,'Inductance per meter in nHz')