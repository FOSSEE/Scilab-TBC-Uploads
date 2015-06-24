clear;
clc;
Eo=10^-9 /(36*%pi),Er1=4,Er2=6,d=5*10^-3,S=30*10^-4;
C1=Eo*Er1*S*2/d;
C2=Eo*Er2*S*2/d;
C=C1*C2/(C1+C2);//Since they are in series
disp(C*10^12,'Capacitance of capacitor in figure a in pF =');
C1=Eo*Er1*S/(2*d);
C2=Eo*Er2*S/(2*d);
C=C1+C2;
disp(C*10^12,'Capacitance of capacitor in figure b in pF = ')